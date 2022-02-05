import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { LayoutComponent } from './components/layout/layout.component';
import { LoginComponent } from './components/login/login.component';
import { SignupComponent } from './components/signup/signup.component';
import { EmployeeComponent } from './employee/employee.component';
import { EmpshowComponent } from './empshow/empshow.component';
import { AuthGuard } from './guards/auth.guard';
import { LocationComponent } from './location/location.component';
import { ProductComponent } from './product/product.component';
import { SalaryComponent } from './salary/salary.component';
import { SalaryformComponent } from './salaryform/salaryform.component';

const routes: Routes = [
  
  {path: 'login', component: LoginComponent},
  {path: 'signup', component: SignupComponent},
  {path:"location", component: LocationComponent},
  {path:"product", component: ProductComponent},
  
  {path: '', component: LayoutComponent, canActivateChild: [AuthGuard], children: [
    {path: '', component: HomeComponent},{path:"employee", component: EmployeeComponent},
    {path:"empshow", component: EmpshowComponent},{path:"salary", component:SalaryComponent},
    {path:"salaryform", component:SalaryformComponent}
  ]}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
