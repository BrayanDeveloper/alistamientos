<?php 
require_once 'librerias/fpdf.php';

    #fpdf

    /**
    * 
    */
    class PDF extends FPDF
    {
        
        function header()
        {
            $this->SetFont('Arial', 'B', 15);
            $this->Cell(120, 10, 'COOTRANSUNIDOS',0,0,'C');
            $this->Ln(20);
        }
        function Footer(){
            $this->SetY(-15);
            $this->SetFont('Arial', 'I', 8);
            
        }
    }
?>