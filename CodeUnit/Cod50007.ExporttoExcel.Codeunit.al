codeunit 50007 "Export to Excel"
{

    trigger OnRun()
    begin
    end;

    var
        recExcelBuffer: Record "Excel Buffer" temporary;
        intLoop: Integer;
        intArrayLength: Integer;
        txtTestArray: array[255] of Text[250];

   
    procedure ExportToExcel(txtExportValue: array[255] of Text[250]; intColumnCount: Integer; intRowNo: Integer; blnBold: Boolean; blnUnderline: Boolean)
    begin
        intArrayLength := intColumnCount;
        for intLoop := 1 to intArrayLength do begin
            recExcelBuffer.Bold := blnBold;
            recExcelBuffer.Underline := blnUnderline;
            recExcelBuffer.Validate(recExcelBuffer."Row No.", intRowNo);
            recExcelBuffer.Validate(recExcelBuffer."Column No.", intLoop);
            recExcelBuffer."Cell Value as Text" := txtExportValue[intLoop];
            recExcelBuffer.Insert;
        end;
    end;

   
    procedure CreateWorkbook(txtSheetName: Text[250]; txtDescription: Text[250])
    begin
        //recExcelBuffer.CreateBook('Sheet1');
        //recExcelBuffer.CreateBookAndOpenExcel(txtSheetName, txtSheetName, txtDescription, CompanyName, UserId);
        //recExcelBuffer.CreateSheet(txtSheetName, txtDescription, COMPANYNAME, USERID);
        //recExcelBuffer.GiveUserControl;
    end;

   
    procedure "---mcrsw037---"()
    begin
    end;

   
    procedure OpenWorkbook(txtFileName: Text[250]; txtSheetName: Text[250]; txtDescription: Text[250]; txtSaveFileName: Text[250])
    begin
        //recExcelBuffer.OpenBook(txtFileName, txtSheetName);
        //recExcelBuffer.CreateSheet(txtSheetName, txtDescription, COMPANYNAME, USERID);    //to be checked
        if txtSaveFileName <> '' then begin
            //recExcelBuffer.SaveBook(txtSaveFileName);        //to be chcked
           // recExcelBuffer.OpenBook(txtSaveFileName, 'Data');
        end;

        //recExcelBuffer.GiveUserControl;
    end;
}

