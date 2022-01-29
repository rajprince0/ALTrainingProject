xmlport 50100 "Trainees Import/Export"
{
    Caption = 'Trainees Import/Export';
    Direction = Import;
    // FieldSeparator = ',';
    // FieldDelimiter = '"';
    Format = VariableText;
    //FormatEvaluate = ;
    UseRequestPage = true;

    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Trainees; Trainees)
            {
                fieldelement(TraineeID; Trainees."Trainee ID")
                {
                }
                fieldelement(TraineeName; Trainees."Trainee Name")
                {
                }
                fieldelement(Address; Trainees.Address)
                {
                }
                fieldelement(City; Trainees.City)
                {
                }
                fieldelement(Postcode; Trainees.Postcode)
                {
                }
                fieldelement(MobileNo; Trainees."Mobile No.")
                {
                }
                fieldelement(TraineeSubject; Trainees."Trainee Subject")
                {
                }
                fieldelement(AdmissionDate; Trainees."Admission Date")
                {
                }
                fieldelement(Email; Trainees.Email)
                {
                }
                fieldelement(Fees; Trainees.Fees)
                {
                }
                fieldelement(Color; Trainees.Color)
                {
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }

    trigger OnPostXmlPort()
    begin
        MESSAGE('XMlport has been imported/exported Successfully.');
    end;

    // trigger OnPreXmlPort()
    // begin
    //     MESSAGE('Yes Lets Import the file');
    // end;
}
