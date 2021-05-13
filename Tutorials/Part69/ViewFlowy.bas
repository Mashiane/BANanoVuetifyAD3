B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals	
	Public vuetify As VuetifyApp
	Public about As VueComponent
	Public path As String
	Public name As String = "flowit"
	Private banano As BANano
	Private dn As VueComponent
	Private dblock As VueComponent
End Sub

#if css
.flowy-block.draggable-mirror {
  opacity: 0.6;
}
#End If

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'
	BuildDemoNode
	BuildDemoBlock
	
	'initialize the component
	about.Initialize(Me, name)
	path = about.path
	'
	Dim fcont As VueElement = about.Page.AddContainer("fcont", True)
	fcont.AddRows2.AddColumns12
	fcont.BuildGrid
	
	'block that we can drag and drop
	Dim blocks As List = about.NewList
	Dim block As Map = AddFlowBlock("New Visitor", "", "<span>When a <b>new visitor</b> goes To <b>Site 1</span></span>", True)
	Dim block1 As Map = AddFlowBlock("Update database", "mdi-flag-checkered", "<span>Triggers when somebody performs a <b>specified action</b></span>", True)
    Dim block2 As Map = AddFlowBlock("Time has passed", "", "Triggers after a specified <b>amount</b> of time", True)
    Dim block3 As Map = AddFlowBlock("Cannot be added", "", "Triggers after a specified <b>amount</b> of time", False)
    
	blocks.Add(block)
	blocks.Add(block1)
	blocks.Add(block2)
	blocks.Add(block3)
	
	about.SetData("blocks", blocks)
	'*****
	'blocks that we can drag and drop UX
	fcont.Cell(1, 0).MA = 6
	Dim fnb As VueElement = fcont.Cell(1, 0).AddVueElement("fnb", "flowy-new-block", Null)
	fnb.vfor = "(block, index) in blocks"
	fnb.Bind("key", "index")
	fnb.SetOnEvent(Me, "drag-start", "block")
	fnb.SetOnEvent(Me, "drag-stop", "block")
	about.BindVueElement(fnb)
	'
	Dim tmp As VueElement = fnb.AddTemplate("fnbtemp")
	tmp.AddAttr("v-slot:preview", "{}")
	'
	Dim deblock As VueElement = tmp.AddVueElement("deblock", "demo-block", Null)
	deblock.AddAttr(":title", "block.preview.title")
    deblock.AddAttr(":description", "block.preview.description")
	'
	Dim snode As VueElement = fnb.AddTemplate("fnbnode")
	snode.AddAttr("v-slot:node", "{}")
	'
	Dim dnode As VueElement = snode.AddVueElement("dnode", "demo-node", Null)
	dnode.AddAttr(":title", "block.node.title")
    dnode.AddAttr(":description", "block.node.description")
    dnode.AddAttr(":custom-attribute", "block.node.canBeAdded")
	'*****
	'
	Dim divf As VueElement = fcont.Cell(2, 1).AddDiv("divf")
	divf.AddClass("flex-grow overflow-auto")
	divf.AddStyle("width", "100%")
    
	Dim xflowy As VueElement = divf.AddVueElement("xflowy", "flowy", Null)
	xflowy.SetAttr(":nodes", "nodes")
	xflowy.SetAttr(":beforeMove", "beforemove")
    xflowy.SetAttr(":beforeAdd", "beforeadd")
    xflowy.SetOnEvent(Me, "add", "")
	xflowy.SetOnEvent(Me, "remove", "")
	xflowy.SetOnEvent(Me, "drag-start", "")
	about.BindVueElement(xflowy)
	'
	Dim nodes As List = about.NewList
	Dim fn As Map = AddFlowNode(-1, "1", "demo-node", CreateMap("text": "Parent block", "title": "New Visitor", _
	"description": "<span>When a <b>new visitor</b> goes to <i>Site 1</i></span>"))
	nodes.Add(fn)
	'
	Dim fn1 As Map = AddFlowNode("1", "2", "demo-node", CreateMap("text": "Parent block", _
          "title": "New Visitor", "description": "<span>When a <b>new visitor</b> goes To <i>Site 1</i></span>"))
	nodes.Add(fn1)
	'
	Dim fn2 As Map = AddFlowNode("1", "3", "demo-node", CreateMap("text": "Parent block", _
          "title": "New Visitor", "description": "<span>When a <b>new visitor</b> goes To <i>Site 1</i></span>"))
	nodes.Add(fn2)
	about.SetData("nodes", nodes)
	
	about.SetData("holder", about.NewList)
	about.SetData("dragging", False)
	'
	Dim obj As Map
	about.SetComputed("beforemove", Me, "beforemove", Array(obj))
	about.SetComputed("beforeadd", Me, "beforeadd", Array(obj))
	vuetify.AddRoute(about) 
End Sub

Sub beforemove(obj As Map) As Boolean
	Log("beforemove...")
	Log(obj)
	'
	Dim sto As Object = obj.Get("to")
	Dim sfrom As Object = obj.Get("from")
	Return True
End Sub

Sub beforeadd(obj As Map) As Boolean
	Log("beforeadd...")
	Log(obj)
	'
	Dim sto As Object = obj.Get("to")
	Dim sfrom As Object = obj.Get("from")
	Return True
End Sub

'drag and drop stuff we can add
Sub fnb_dragstart(e As Map)
	Log("fnb_dragstart...")
	Log(e)
	Dim props As BANanoObject = e
	about.SetData("newDraggingBlock", props)
End Sub

Sub fnb_dragstop(e As Map)
	Log("fnb_dragstop...")
	Log(e)
	about.SetData("newDraggingBlock", Null)
End Sub

Sub xflowy_add(e As Map)
	
End Sub

Sub xflowy_remove(e As Map)
	
End Sub

Sub xflowy_dragstart(e As Map)
	Log("xflowy_dragstart...")
	Log(e)
	about.SetData("dragging", True)
End Sub

Sub AddFlowBlock(title As String, icon As String, description As String, canBeAdded As Boolean) As Map
	Dim block As Map = CreateMap()
	Dim preview As Map = CreateMap()
	Dim node As Map = CreateMap()
	'
	preview.Put("title", title)
	If icon <> "" Then 
		preview.Put("icon", icon)
	End If
	block.Put("preview", preview)
	'
	node.Put("title", title)
	node.Put("description", description)
	If canBeAdded = False Then
		node.Put("canBeAdded", False)
	End If
	block.put("node", node)
	'
	Return block
End Sub


Sub AddFlowNode(parentID As Int, id As String, nodeComponent As String, data As Map) As Map
	 Dim fn As Map = CreateMap()
	 fn.Put("id", id)
	 fn.Put("parentId", parentID)
	 fn.Put("nodeComponent", nodeComponent)
	 fn.Put("data", data)
	 Return fn
End Sub

'displaying nodes
Sub BuildDemoNode
	dn.Initialize(Me, "demo-node")
	dn.SetData("text", "This is Component A")
	dn.AddProperty("remove")
	dn.AddProperty("node")
	dn.AddProperty("title")
	dn.AddProperty("description")
	'
	Dim qcard As VueElement = dn.Page.AddCard1("qcard")
	qcard.Elevation = 4
	Dim ct As VueElement = qcard.AddCardTitle1("qcardtitle")
	ct.Caption = "{{ title }}"
	ct.AddSpacer
	Dim qhandle As VueElement = ct.AddVueElement("qhandle", "flowy-drag-handle", Null)
	Dim btnMove As VueElement = qhandle.AddButtonWithIcon1("btnmove", "mdi-drag", "grey", "")
	btnMove.CursorGrab	
	'
	Dim qtext As VueElement = qcard.AddCardText("qcardtext", "", Null)
	Dim textdiv As VueElement = qtext.AddDiv("qcardtextdiv")
	textdiv.VHtml = "description"
	'
	Dim btnremove As VueElement = qtext.AddButton1("btnremove", "Remove", Null)
	dn.BindVueElement(btnremove)
	'
	vuetify.Import(dn)
End Sub

Sub btnremove_click(e As BANanoEvent)
	
End Sub

'things we will add
Sub BuildDemoBlock
	dblock.Initialize(Me, "demo-block")
	dblock.SetData("text", "This is component A")
	dblock.AddProperty("remove")
	dblock.AddProperty("node")
	dblock.AddProperty("title")
	dblock.AddProperty("description")
	'
	Dim qcard As VueElement = dn.Page.AddCard1("qcard1")
	qcard.Elevation = 4
	Dim qcardtitle As VueElement = qcard.AddCardTitle1("qcard1title")
	Dim qhandle As VueElement = qcardtitle.AddVueElement("qhandle1", "flowy-drag-handle", Null)
	Dim btnMove As VueElement = qhandle.AddButtonWithIcon1("btnmove1", "mdi-drag", "grey", "")
	btnMove.CursorGrab
	qhandle.MR = 2
	
	Dim title As VueElement = qcardtitle.AddDiv("db1div")
	title.vhtml = "title"
	title.TitleClass = True
	title.MR = 2
	
	vuetify.Import(dblock)
End Sub
