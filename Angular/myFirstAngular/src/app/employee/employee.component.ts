import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-employee',
  templateUrl: './employee.component.html',
  styleUrls: ['./employee.component.css']
})
export class EmployeeComponent implements OnInit {
  
  students: any[] = [
    {
        ID: 'std101', Name: 'RaKesh ROUT',
        DOB: '12/8/1988', Gender: 'Male', CourseFee: 1234.56
    },
    {
        ID: 'std102', Name: 'ANURAG Mohanty', 
        DOB: '10/14/1989', Gender: 'Male', CourseFee: 6666.00
    },
    {
        ID: 'std103', Name: 'Priyanka Dewangan', 
        DOB: '7/24/1992', Gender: 'Female', CourseFee: 6543.15
    },
    {
        ID: 'std104', Name: 'Hina SHARMA', 
        DOB: '8/19/1990', Gender: 'Female', CourseFee: 9000.50
    },
    {
        ID: 'std105', Name: 'SamBIt SataPATHY',
        DOB: '4/12/1991', Gender: 'Male', CourseFee: 9876.54
    }
  ];

  
  isValid:boolean=true;
  ChangeData(valid:boolean)
  {
    this.isValid=valid;
  }
  Name: string = 'Anurag';
  Branch: string = 'CSE';
  Mobile: number = 9876543210;
  Gender: string = 'Male';
  Age: number = 22;
  constructor() { }

  ngOnInit(): void {
  }

}
