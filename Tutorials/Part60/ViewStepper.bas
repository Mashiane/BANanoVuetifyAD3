B4J=true
Group=Default Group\Views
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Public vuetify As VuetifyApp
	Public stepper As VueComponent
	Public path As String
	Public name As String = "stepper"
	Private banano As BANano
End Sub

Sub Initialize
	'establish a reference to the app
	vuetify = pgIndex.vuetify
	'initialize the component
	stepper.Initialize(Me, name)
	path = stepper.path
	
	'add a container
	Dim vcontainer As VueElement = vuetify.AddContainer(Me, stepper.Here, "stepcnt", True)
	'add rows
	vcontainer.AddRows5.AddColumns12
	'vcontainer.ShowGridDesign = True
	vcontainer.buildgrid
	'
	CreateStepper1(vcontainer)
	CreateStepper2(vcontainer)
	CreateStepper3(vcontainer)
	'
	'add the component as a router
	vuetify.AddRoute(stepper)
End Sub

Sub CreateStepper3(vc As VueElement)
	'add a stepper
	Dim stepper3 As VueElement = vuetify.AddStepper(Me, vc.MatrixID(3,1), "stepper3", "el3", False, False, True, Null)
	
	'add steps
	Dim step1 As VueElement = stepper3.AddStep("step1", "Step 1", "", ":true")
	Dim step1card As VueElement = vuetify.AddCard(Me, step1.ID, "step3card1", "grey lighten-1", Null)
	step1card.AddClass("mb-12")
	step1card.Height = "200px"
	'
	Dim step2 As VueElement = stepper3.AddStep("step2", "Step 2", "", ":true")
	Dim step2card As VueElement = vuetify.AddCard(Me, step2.ID, "step3card2", "grey lighten-1", Null)
	step2card.AddClass("mb-12")
	step2card.Height = "200px"
	'
	Dim step3 As VueElement = stepper3.AddStep("step3", "Step 3", "", ":true")
	Dim step3card As VueElement = vuetify.AddCard(Me, step3.ID, "step3card3", "grey lighten-1", Null)
	step3card.AddClass("mb-12")
	step3card.Height = "200px"
	'
	stepper.BindVueElement(step1)
	stepper.BindVueElement(step2)
	stepper.BindVueElement(step3)
	stepper.BindVueElement(stepper3)
End Sub



Sub CreateStepper2(vc As VueElement)
	'add a stepper
	Dim stepper2 As VueElement = vuetify.AddStepperHorizontal(Me, vc.MatrixID(2,1), "stepper2", "el2", True, True, Null)
	'add steps
	Dim step1 As VueElement = stepper2.AddStepHorizontal("step1", "Step 1", "", ":true", True)
	Dim step1card As VueElement = vuetify.AddCard(Me, step1.ID, "step2card1", "grey lighten-1", Null)
	step1card.AddClass("mb-12")
	step1card.Height = "200px"
		'
	Dim step2 As VueElement = stepper2.AddStepHorizontal("step2", "Step 2", "", ":true", True)
	Dim step2card As VueElement = vuetify.AddCard(Me, step2.ID, "step2card2", "grey lighten-1", Null)
	step2card.AddClass("mb-12")
	step2card.Height = "200px"
	'
	Dim step3 As VueElement = stepper2.AddStepHorizontal("step3", "Step 3", "", ":true", False)
	Dim step3card As VueElement = vuetify.AddCard(Me, step3.ID, "step2card3", "grey lighten-1", Null)
	step3card.AddClass("mb-12")
	step3card.Height = "200px"
	'	
	stepper.BindVueElement(step1)
	stepper.BindVueElement(step2)
	stepper.BindVueElement(step3)
	stepper.BindVueElement(stepper2)
End Sub




Sub CreateStepper1(vc As VueElement)
	'add a stepper
	Dim stepper1 As VueElement = vuetify.AddStepperHorizontal(Me, vc.MatrixID(1,1), "stepper1", _
	"el", False, False, Null)
	'add steps
	Dim step1 As VueElement = stepper1.AddStepHorizontal("step1", "Step 1", ":stepcomplete(1)", "", True)
	Dim step1card1 As VueElement = vuetify.AddCard(Me, step1.ID, "step1card1", "grey lighten-1", Null)
	step1card1.AddClass("mb-12")
	step1card1.Height = "200px"
	'
	Dim step1continue As VueElement = vuetify.AddButton(Me, step1.ID, "step1continue", "Continue", "primary", False, Null)
	Dim step1cancel As VueElement = vuetify.AddButton(Me, step1.ID, "step1cancel", "Cancel", "", False, CreateMap(":text":True))
	
	'
	Dim step2 As VueElement = stepper1.AddStepHorizontal("step2", "Step 2", ":stepcomplete(2)", "", True)
	Dim step2card As VueElement = vuetify.AddCard(Me, step2.ID, "step1card2", "grey lighten-1", Null)
	step2card.AddClass("mb-12")
	step2card.Height = "200px"
	'
	Dim step2continue As VueElement = vuetify.AddButton(Me, step2.ID, "step2continue", "Continue", "primary", False, Null)
	Dim step2cancel As VueElement = vuetify.AddButton(Me, step2.ID, "step2cancel", "Cancel", "", False, CreateMap(":text":True))
	
	'
	Dim step3 As VueElement = stepper1.AddStepHorizontal("step3", "Step 3", ":stepcomplete(3)", "", False)
	Dim step3card As VueElement = vuetify.AddCard(Me, step3.ID, "step1card3", "grey lighten-1", Null)
	step3card.AddClass("mb-12")
	step3card.Height = "200px"
	'
	Dim step3continue As VueElement = vuetify.AddButton(Me, step3.ID, "step3continue", "Continue", "primary", False, Null)
	Dim step3cancel As VueElement = vuetify.AddButton(Me, step3.ID, "step3cancel", "Cancel", "", False, CreateMap(":text":True))
	
	
	
	stepper.BindVueElement(step1continue)
	stepper.BindVueElement(step2continue)
	stepper.BindVueElement(step3continue)
	stepper.BindVueElement(step1)
	stepper.BindVueElement(step2)
	stepper.BindVueElement(step3)
	stepper.BindVueElement(stepper1)
	'
	Dim args As List
	stepper.SetMethod(Me, "stepcomplete", args)

End Sub


Sub step1continue_click(e As BANanoEvent)
	stepper.SetData("el", 2)
End Sub

Sub step2continue_click(e As BANanoEvent)
	stepper.SetData("el", 3)
End Sub

Sub step3continue_click(e As BANanoEvent)
	stepper.SetData("el", 1)
End Sub

'trap change event
Sub stepper1_change(obj As Object)
	vuetify.ShowSnackBarSuccess(obj)
End Sub


Sub stepcomplete(pos As Int) As Boolean			'ignore dead code
	Dim iel As Int = stepper.GetData("el")
	iel = banano.parseInt(iel)
	Dim b As Boolean = iel > pos
	Return b
End Sub