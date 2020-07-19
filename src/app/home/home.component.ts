import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

  openNav() {
    document.getElementById('result').style.width = '800px';
    document.getElementById('body').style.paddingRight = '800px';
 }

 closeNav() {
  document.getElementById('result').style.width = '0';
  document.getElementById('body').style.paddingRight = '0';
}


}
