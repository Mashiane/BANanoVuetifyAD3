(function (global, factory) {
  typeof exports === 'object' && typeof module !== 'undefined' ? module.exports = factory(require('dragula'), require('xstate')) :
  typeof define === 'function' && define.amd ? define(['dragula', 'xstate'], factory) :
  (global = typeof globalThis !== 'undefined' ? globalThis : global || self, global.VueKanban = factory(global.dragula, global.XState));
}(this, (function (dragula, xstate) { 'use strict';

  function _interopDefaultLegacy (e) { return e && typeof e === 'object' && 'default' in e ? e : { 'default': e }; }

  var dragula__default = /*#__PURE__*/_interopDefaultLegacy(dragula);

  var Kanban = {
  render: function(){var _vm=this;var _h=_vm.$createElement;var _c=_vm._self._c||_h;return _c('div',{staticClass:"drag-container"},[_c('ul',{staticClass:"drag-list"},_vm._l((_vm.stages),function(stage){
  var _obj;
  return _c('li',{key:stage,staticClass:"drag-column",class:( _obj = {}, _obj['drag-column-' + stage] = true, _obj )},[_c('span',{staticClass:"drag-column-header"},[_vm._t(stage,function(){return [_c('h2',[_vm._v(_vm._s(stage))])]})],2),_vm._v(" "),_c('div',{staticClass:"drag-options"}),_vm._v(" "),_c('ul',{ref:"list",refInFor:true,staticClass:"drag-inner-list",attrs:{"data-status":stage}},_vm._l((_vm.getBlocks(stage)),function(block){return _c('li',{key:block[_vm.idProp],staticClass:"drag-item",attrs:{"data-block-id":block[_vm.idProp]}},[_vm._t(block[_vm.idProp],function(){return [_c('strong',[_vm._v(_vm._s(block[_vm.statusProp]))]),_vm._v(" "),_c('div',[_vm._v(_vm._s(block[_vm.idProp]))])]})],2)}),0),_vm._v(" "),_c('div',{staticClass:"drag-column-footer"},[_vm._t(("footer-" + stage))],2)])}),0)])},
  staticRenderFns: [],
      name: 'KanbanBoard',

      props: {
        stages: {
          type: Array,
          required: true,
        },
        blocks: {
          type: Array,
          required: true,
        },
        config: {
          type: Object,
          default: () => ({}),
        },
        stateMachineConfig: {
          type: Object,
          default: null,
        },
        idProp: {
          type: String,
          default: 'id',
        },
        statusProp: {
          type: String,
          default: 'status',
        },
      },

      data() {
        return {
          machine: null,
        };
      },

      computed: {
        localBlocks() {
          return this.blocks;
        },
      },

      methods: {
        getBlocks(status) {
          return this.localBlocks.filter(block => block[this.statusProp] === status);
        },

        findPossibleTransitions(sourceState) {
          return this.machine.config.states[sourceState].on || {};
        },

        findTransition(target, source) {
          const targetState = target.dataset.status;
          const sourceState = source.dataset.status;
          const possibleTransitions = this.findPossibleTransitions(sourceState);
          return Object.keys(possibleTransitions)
            .find(transition => possibleTransitions[transition] === targetState);
        },

        accepts(block, target, source) {
          if (!this.machine) return true;
          const targetState = target.dataset.status;
          const sourceState = source.dataset.status;
          return Object.values(this.findPossibleTransitions(sourceState)).includes(targetState);
        },

        allowedTargets(el, source) {
          const block = this.localBlocks.find(b => b[this.idProp] === el.dataset.blockId);
          return this.drake.containers.filter(c => this.config.accepts(block, c, source));
        },

        forbiddenTargets(el, source) {
          return this.drake.containers.filter(c => !this.allowedTargets(el, source).includes(c));
        },
      },

      updated() {
        this.drake.containers = this.$refs.list;
        this.drake.mirrorContainer = this.$el;
      },

      mounted() {
        this.config.accepts = this.config.accepts || this.accepts;
        this.config.mirrorContainer = this.$el;
        this.drake = dragula__default['default'](this.$refs.list, this.config)
        .on('drag', (el, source) => {
          this.$emit('drag', el, source);
          el.classList.add('is-moving');
          this.allowedTargets(el, source).forEach(c => c.classList.add('allowed'));
          this.forbiddenTargets(el, source).forEach(c => c.classList.add('forbidden'));
        })
        .on('dragend', (el) => {
          this.$emit('dragend', el);
          el.classList.remove('is-moving');
          this.drake.containers.forEach(c => c.classList.remove('allowed', 'forbidden'));
          window.setTimeout(() => {
            el.classList.add('is-moved');
            window.setTimeout(() => {
              el.classList.remove('is-moved');
            }, 600);
          }, 100);
        })
        .on('drop', (block, list, source, sibling) => {
          this.$emit('drop', block, list, source, sibling);
          let index = 0;
          for (index = 0; index < list.children.length; index += 1) {
            if (list.children[index].classList.contains('is-moving')) break;
          }

          let newState = list.dataset.status;

          if (this.machine) {
            const transition = this.findTransition(list, source);
            if (!transition) return;
            newState = this.machine.transition(source.dataset.status, transition).value;
          }

          this.$emit('update-block', block.dataset.blockId, newState, index);
        })
        .on('cancel', (el, container, source) => {
          this.$emit('cancel', el, container, source);
        })
        .on('remove', (el, container, source) => {
          this.$emit('remove', el, container, source);
        })
        .on('shadow', (el, container, source) => {
          this.$emit('shadow', el, container, source);
        })
        .on('over', (el, container, source) => {
          this.$emit('over', el, container, source);
        })
        .on('out', (el, container, source) => {
          this.$emit('out', el, container, source);
        })
        .on('cloned', (clone, original, type) => {
          this.$emit('cloned', clone, original, type);
        });
        this.$emit('init', this.drake);
      },

      created() {
        if (!this.stateMachineConfig) return;
        this.machine = xstate.Machine(this.stateMachineConfig);
      },
    };

  var plugin = {
    install(vue) {
      vue.component('kanban-board', Kanban);
    },
  };

  return plugin;

})));
//# sourceMappingURL=index.js.map
