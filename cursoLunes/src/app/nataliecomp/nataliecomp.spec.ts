import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Nataliecomp } from './nataliecomp';

describe('Nataliecomp', () => {
  let component: Nataliecomp;
  let fixture: ComponentFixture<Nataliecomp>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [Nataliecomp],
    }).compileComponents();

    fixture = TestBed.createComponent(Nataliecomp);
    component = fixture.componentInstance;
    await fixture.whenStable();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
