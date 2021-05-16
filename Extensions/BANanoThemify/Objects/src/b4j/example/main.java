package b4j.example;


import anywheresoftware.b4a.BA;

public class main extends javafx.application.Application{
public static main mostCurrent = new main();

public static BA ba;
static {
		ba = new  anywheresoftware.b4j.objects.FxBA("b4j.example", "b4j.example.main", null);
		ba.loadHtSubs(main.class);
        if (ba.getClass().getName().endsWith("ShellBA")) {
			
			ba.raiseEvent2(null, true, "SHELL", false);
			ba.raiseEvent2(null, true, "CREATE", true, "b4j.example.main", ba);
		}
	}
    public static Class<?> getObject() {
		return main.class;
	}

 
    public static void main(String[] args) {
    	launch(args);
    }
    public void start (javafx.stage.Stage stage) {
        try {
            if (!false)
                System.setProperty("prism.lcdtext", "false");
            anywheresoftware.b4j.objects.FxBA.application = this;
		    anywheresoftware.b4a.keywords.Common.setDensity(javafx.stage.Screen.getPrimary().getDpi());
            anywheresoftware.b4a.keywords.Common.LogDebug("Program started.");
            initializeProcessGlobals();
            anywheresoftware.b4j.objects.Form frm = new anywheresoftware.b4j.objects.Form();
            frm.initWithStage(ba, stage, 500, 500);
            ba.raiseEvent(null, "appstart", frm, (String[])getParameters().getRaw().toArray(new String[0]));
        } catch (Throwable t) {
            BA.printException(t, true);
            System.exit(1);
        }
    }
public static anywheresoftware.b4a.keywords.Common __c = null;
public static com.ab.banano.BANano _banano = null;
public static String _appname = "";
public static String _version = "";
public static boolean  _application_error(anywheresoftware.b4a.objects.B4AException _error,String _stacktrace) throws Exception{
 //BA.debugLineNum = 27;BA.debugLine="Sub Application_Error (Error As Exception, StackTr";
 //BA.debugLineNum = 28;BA.debugLine="Return True";
if (true) return anywheresoftware.b4a.keywords.Common.True;
 //BA.debugLineNum = 29;BA.debugLine="End Sub";
return false;
}
public static String  _appstart(anywheresoftware.b4j.objects.Form _form1,String[] _args) throws Exception{
 //BA.debugLineNum = 16;BA.debugLine="Sub AppStart (Form1 As Form, Args() As String)";
 //BA.debugLineNum = 18;BA.debugLine="BANano.Initialize(\"BANano\", AppName, Version)";
_banano.Initialize("BANano",_appname,(long)(Double.parseDouble(_version)));
 //BA.debugLineNum = 19;BA.debugLine="BANano.HTML_NAME = \"index.html\"";
_banano.HTML_NAME = "index.html";
 //BA.debugLineNum = 20;BA.debugLine="BANano.Header.Title = AppName";
_banano.Header.Title = _appname;
 //BA.debugLineNum = 21;BA.debugLine="BANano.Header.AddCSSFile(\"themify-icons.css\")";
_banano.Header.AddCSSFile("themify-icons.css");
 //BA.debugLineNum = 22;BA.debugLine="BANano.BuildAsB4XLib(Version)";
_banano.BuildAsB4XLib(_version);
 //BA.debugLineNum = 23;BA.debugLine="ExitApplication";
anywheresoftware.b4a.keywords.Common.ExitApplication();
 //BA.debugLineNum = 24;BA.debugLine="End Sub";
return "";
}

private static boolean processGlobalsRun;
public static void initializeProcessGlobals() {
    
    if (main.processGlobalsRun == false) {
	    main.processGlobalsRun = true;
		try {
		        main._process_globals();
		
        } catch (Exception e) {
			throw new RuntimeException(e);
		}
    }
}public static String  _process_globals() throws Exception{
 //BA.debugLineNum = 10;BA.debugLine="Sub Process_Globals";
 //BA.debugLineNum = 11;BA.debugLine="Public BANano As BANano 'ignore";
_banano = new com.ab.banano.BANano();
 //BA.debugLineNum = 12;BA.debugLine="Public AppName As String = \"BANanoThemify\"";
_appname = "BANanoThemify";
 //BA.debugLineNum = 13;BA.debugLine="Public Version As String = \"1.00\"";
_version = "1.00";
 //BA.debugLineNum = 14;BA.debugLine="End Sub";
return "";
}
}
