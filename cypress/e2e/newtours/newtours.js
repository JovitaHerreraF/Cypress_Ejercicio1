import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Given("El usuario tiene una cuenta ya creada", () =>{
    //cy.visit("https://demo.guru99.com/test/newtours/") 
    cy.visit("https://www.automationexercise.com/login")
})


 
When('El usuario ingresa {} en el campo usuario', (username) => {
    cy.get('input[data-qa="login-email"]').type(username);
    
})

When('El usuario ingresa {} en el campo password', (password) => {
    cy.get('input[data-qa="login-password"]').type(password);
    
})

When('El usuario da click el boton de login', () => {
    cy.get('button[data-qa="login-button"]').click();
    
})

Then('El usuario verifica el mensaje {string}', (errorMessage) => {
    cy.get('div[class="login-form"]>form>p').should('have.text', errorMessage);

})

Then('El usuario espera que se muestre {string}', (logout_option) => {
    cy.get('.shop-menu>ul>li:nth-child(4)>a').should('have.text', logout_option);

})