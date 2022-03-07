page 50042 "Employee Training"
{
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = "Training Courses";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Courses Code"; "Courses Code")
                {
                }
                field("Training Group"; "Training Group")
                {
                }
                field("Course Type"; "Course Type")
                {
                    Caption = 'Course Group';
                }
                field("Course Name"; "Course Name")
                {
                    Editable = false;
                }
                field("Vendor Code"; "Vendor Code")
                {
                    Enabled = "Vendor CodeEnable";
                }
                field("Vendor name"; "Vendor name")
                {
                    Editable = false;
                    Enabled = "Vendor nameEnable";
                }
                field("Course Description"; "Course Description")
                {
                    Caption = 'Course Description';
                }
                field(Comment; Comment)
                {
                    Caption = 'HHR Comment';
                }
                field("Course Start Date"; "Course Start Date")
                {
                }
                field(Time; Time)
                {
                }
                field("Course Duration"; "Course Duration")
                {
                }
                field("Unit Cost"; "Unit Cost")
                {
                    Caption = 'Unit Cost';
                    Editable = false;
                }
                field("Total Cost"; "Total Cost")
                {
                    Enabled = "Total CostEnable";
                }
            }
            part("Training Lines"; "Employee Training sub form")
            {
                SubPageLink = "Training Course Code" = FIELD ("Courses Code");
                SubPageView = SORTING ("Training Group", "Training Course Code", "Course Line No.");
            }
        }
    }

    actions
    {
    }
}

