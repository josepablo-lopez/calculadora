<%@ Language=VBScript %>
<html>
  <head>
    <meta charset="utf-8">
    <title>Calculadora</title>
  </head>
  <body>
    <div align="center">
      <!– Se crea un formulario y se envia por metodo POST –>
      <form name="tb" method="post">
        <P align="center">
          Numero 1:
          <input type="number" min="1" max="99" name="n1">
          <br />
          numero 2:
          <input type="number" min="1" max="99" name="n2">
          <br />

          <!- Boton para enviar el formulario ->
          <!input type="button" value="1" name="1"/>
          <!input type="button" value="1" name="1"/>
          <!input type="button" value="2"/>
          <!input type="button" value="3"/>

          <!br/>
          <!input type="button" value="4"/>
          <!input type="button" value="5"/>
          <!input type="button" value="6"/>
          <!br/>
          <!input type="button" value="7"/>
          <!input type="button" value="8"/>
          <!input type="button" value="9"/>
          <br/>
          <input type="submit" value="+" name="suma" />
          <input type="submit" value="-" name="resta" />
          <input type="submit" value="*" name="multiplicacion" />
          <input type="submit" value="/" name="divis" />
        </P>
      </form>
      

      <%
        Dim n1 
        Dim n1ver
        Dim n2
        Dim n2ver

        n1ver = request.form("n1") <> ""
        if n1ver then
          'Se toma el dato recibido en el formulario
          nprev1 = Request.Form("n1")
          n1=CInt(nprev1)
        else
        Response.Write "favor ingresar un numero "
        
        end if

        n2ver = request.form("n1") <> ""
        if n2ver then
          'Se toma el dato recibido en el formulario
          nprev2 = Request.Form("n2")
          n2=CInt(nprev2)
        else
        Response.Write "favor ingresar un numero"
       
        end if
      %>
      
      <%
        Dim suma
        Dim resta
        Dim divis 
        Dim multiplicacion 
        Dim resultado

        suma = request.form("suma")<> ""
        resta = request.form("resta")<> ""
        divis = request.Form("divis")<> ""
        multiplicacion= request.Form("multiplicacion")<> ""

        if suma then
        resultado = n1 + n2
        Response.Write resultado 

        ElseIf resta then
        resultado = n1 - n2
        Response.Write resultado

        ElseIf divis then
        resultado = n1 / n2
        Response.Write resultado

        ElseIf multiplicacion then
        resultado = n1 * n2
        Response.Write resultado
        end if

      %>
  
    </div>
  </body>
</html>