//
//  HombroTableViewController.swift
//  FinalTests
//
//  Created by Juan carlos on 11/2/17.
//  Copyright © 2017 Juan carlos. All rights reserved.
//

import UIKit
import  Foundation

class HombroTableViewController: UITableViewController {
        
    var listaTests : [Test] = []
   let section = ["Test para supraespinoso", "Test para infraespinoso", "Test para cabeza larga del biceps", "Test para SLAP", "Test para impigment", "Art acromioclavicular"]
    override func viewDidLoad() {
        super.viewDidLoad()

          navigationItem.backBarButtonItem = UIBarButtonItem(title: "Hombro", style: .plain, target: nil, action: nil)
//MARK: TENDONES
//supraespinoso
        var test = Test(name: "Test de Jobe",
                        image : #imageLiteral(resourceName: "Jobeimage"),
                        objetivo : "Rotura o desgarro del supraespinoso",
                        patientPosition : "Con el hombro en abd de 90º y rotación interna",
                        clinicPosition: "Detras del paciente. Toma en 1/3 medio del antebrazo",
                        steps : ["el clínico intenta descender el brazo mientras el paciente opone resistencia", "esto es un paso mas inventado para el desarrollo de la app"] ,
                        positivo : ["el brazo del paciente no puede mantener la posición"],
                        evidence: ["http://www.ncbi.nlm.nih.gov/pubmed/8872929",
                                   "https://www.ncbi.nlm.nih.gov/pubmed/28122541"],
                        dor : 9.37,
                        sensibilidad : 0.125,
                        especificidad : 0.7,
                        LRpositive : 7.5,
                        LRnegative : 0.8,
                        masInfo :  [""]
        )
        listaTests.append(test)
        
        
        test = Test(name: "External rotation lag sign",
                    image : #imageLiteral(resourceName: "externalRotationLagSign"),
                    objetivo: "valorar el tendón del supraespinoso",
                    patientPosition: "sentado. con el codo flexionado 90º.",
                    clinicPosition : "al lado del paciente",
                    steps:  ["la mano que sostiene el codo eleva el codo 20º en el plano escapular", "la mano que sostiene la muñeca lleva el hombro a rotecion externa completa menos 5º", "Se  le pide al paciente que sostenga la rotación externa y se suelta la muñeca"],
                    positivo : ["no puede mantener la rotación externa o titubea" , "Un titubeo de 10º sugiere rotura de un tendón", "Un titubeo >10º sugiere rotura de infra y supraespinoso"],
                    evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/19223205",
                               "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4523548" ],
                    dor : 233.33,
                    sensibilidad: 0.56,
                    especificidad: 0.98,
                    LRpositive : 70.0,
                    LRnegative : 0.30,
                    masInfo :  ["Hay una fuerte correlación entre la extensión del daño en el tendón y la cantidad de titubeo del brazo del paciente al realizar la prueba.", "La aparición de un titubeo por parte del paciente de más de 40º ha mostrado una sensibilidad y especidficidad de casi el 100% para rotura masiva de los tendones del manguito rotador."]
        )
        listaTests.append(test)

        
        
        test = Test(name: "Signo del brazo caído. Drop Arm Test",//maniobras exploratorias del hombro doloroso.
                    image : #imageLiteral(resourceName: "brazo caido test"),
            objetivo: "rotura del supraespinoso",
            patientPosition: "En sedestación.",
            clinicPosition : "Observando.",
            steps:  ["el paciente realiza una abd de 90º con el codo en extensión.", "Luego la irá bajando lentamente."],
            positivo : ["no es capaz de descenderlo inmediatamente sin dolor."],
            evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/10627426"],
            dor : 2.84,
            sensibilidad: 0.08,
            especificidad: 0.97,
            LRpositive : 2.67,
            LRnegative :  0.94,
            masInfo :  ["el clínico tambien puede realizar una presión contra la abdución y valorar la resistencia que opone el paciente.",
            ""]
            )
            listaTests.append(test)
        
        
        test = Test(name: "Hug-Up test",
                    image : #imageLiteral(resourceName: "Hug-up test"),
            objetivo: "",
            patientPosition: "De pie. con la mano del brazo a evaluar sobre el hombro contrario y el codo anterior al paciente.",
            clinicPosition : "delante del paciente.",
            steps:  ["el examinador empuja a nivel del codo en dirección al suelo.", "Se le pide al paciente que resista el movimiento."],
            positivo : ["si se muestra un 20% o más debíl que el hombro contrario."],
            evidence: ["https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4799540/"],
            dor : 49,
            sensibilidad: 0.94,
            especificidad: 0.76,
            LRpositive : 3.92,
            LRnegative : 0.08,
            masInfo :  ["Si se produce dolor pero no debilidad se debe de tomar como negativo para estos datos de validez diagnóstica."]
            )
        listaTests.append(test)

        
        
        
//infraespinoso
        test = Test(name: "Prueba del infraespinoso ROt ext resistida",//AKA external rotation strength test
                    image : #imageLiteral(resourceName: "external rotation strength test"),
            objetivo: "rotura del infraespinoso parcial o total.",
            patientPosition: "En bipedestación. con el codo en flexión de 90º y pegado al cuerpo. Pronosupinación neutra ",
            clinicPosition : "Al lado del paciente. una mano resiste la rotación externa en la muñeca y la otra agarra el codo contrario de manera que con el torax bloquee la abd del brazo a examinar.",
            steps:  ["Se le pide al paciente que haga una rotación externa con el brazo a examinar.", "El examinador resiste la acción."],
            positivo : ["el paciente siente dolor o debilidad"],
            evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/16219939",//level evidence 4
            ""],
            dor : 0,
            sensibilidad: 0,
            especificidad: 0,
            LRpositive : 0,
            LRnegative :0,
            masInfo :  [""]
            )
            listaTests.append(test)
        
        
        test = Test(name: "Maniobra de Patte",
                    image : #imageLiteral(resourceName: "patte sign"),
            objetivo: "valorar tendón de infraespinoso",
            patientPosition: "En sedestación o decúbito supino.",
            clinicPosition : "Al lado del paciente, por detrás y mirando en la misma dirección.",
            steps:  ["El paciente eleva el brazo a 90º de abdución y con el codo en flexión de 90º", "Intenta hacer una rotación externa contra la resistencia del explorador."],
            positivo : [""],
            evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/18375403"],
            dor : 2.14,
            sensibilidad: 0.58 ,
            especificidad: 0.60,
            LRpositive : 1.5,
            LRnegative : 0.70,
            masInfo :  [" "]
            )
            
            listaTests.append(test)
        
 //subescapular
        
        test = Test(name: "Bear Hug test",
                    image : #imageLiteral(resourceName: "bearHugTest"),
                    objetivo: "lesión potencial del subescapular",
                    patientPosition: "sentado. Con la mano del brazo afecto sobre el hombro contrario.",
                    clinicPosition : "Enfrente del paciente",
                    steps:  ["Se le pide al paciente que presione sobre el hombro contrario", "ha de mantener el codo a la misma altura de los hombros"],
                    positivo : ["es incapaz de mantener el codo alineado con los hombros"],
                    evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/23434234"],//level 3
            dor  : 2.37,
            sensibilidad: 0.19,
            especificidad: 0.91,
            LRpositive: 2.11,
            LRnegative: 0.89,
            masInfo :  [""]
        )
        listaTests.append(test)
        

        
        
//porcion larga del biceps
            
            test = Test(name: "speed, Palm Up test",
            image : #imageLiteral(resourceName: "speed test"),
            objetivo: "valorar la presencia de tendinopatía de PL biceps ",
            patientPosition: "en bipedestación.con el codo en extensión y hombro en rotación externa",
            clinicPosition : "en frente del paciente. ",
            steps:  ["el paciente intenta una flexión anterior contra la resistencia del clínico.", ""],
            positivo : ["aparece dolor o falta de resistencia"],
            evidence: [""],
            dor : 0,
            sensibilidad: 0,
            especificidad: 0,
            LRpositive : 0,
            LRnegative : 0,
            masInfo :  [""]
            )
            
            listaTests.append(test)
        
     /*   test = Test(name: "Maniobra de Yergason",
                    image : ,
            objetivo: "",
            patientPosition: "",
            clinicPosition : "",
            steps:  ["", ""],
            positivo : [""],
            evidence: ["],
            dor : ,
            sensibilidad: ,
            especificidad: ,
            LRpositive : ,
            LRnegative :
            masInfo :  ["Esta maniobra no ha mostrado utilidad diagnostica para tendinopatias de biceps pero si para lesiones de labrum. "]
            )
            
            listaTests.append(test)*/
        
        test = Test(name: "Signo de Popeye",
                    image : #imageLiteral(resourceName: "popeye sign"),
            objetivo: "Rotura total del biceps",
            patientPosition: "En sedestación.",
            clinicPosition : "Al lado del paciente con una mano en la muñeca del paciente.",
            steps:  ["con el antebrazo en supinación, intenta realizar una flexión de codo.", ""],
            positivo : ["el vientre muscular del biceps se desplaza cranealmente."],
            evidence: [""],
            dor : 0,
            sensibilidad: 0,
            especificidad: 0,
            LRpositive : 0,
            LRnegative :0,
            masInfo :  ["mirando hasta 2010, su utilidad ha sido estudiada para valorar los resulatdos de la cirugía del biceps pero no la utilidad diagnóstica", "En pacientes con rotura completa de la porción larga del biceps al hacer la flexión de codo el antebrazo no supinará, ya que esta acción la realiza el biceps, sino que aparecerá una flexión en pronación ya que el único que actúa es el braquial anterior."]
            )
            
            listaTests.append(test)
            
  //MARK: SLAP
            
        test = Test(name: "Compresion Rotation Test",
                    image : #imageLiteral(resourceName: "compresion rotation "),
                    objetivo: "Lesión de Slap",
                    patientPosition: "tumbado",
                    clinicPosition : "al lado. Con una mano sostiene el codo y la otra en la muñeca",
                    steps:  ["se lleva a 90º de abd con el codo flexionado", "se realiza una compresión desde el codo a hombro.", "se realizan movimientos en rotación externa e interna desde la muñeca"],
                    positivo : ["el paicente siente aprensión o dolor"],
                    evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/28122541"],
                    dor : 6.1,
                    sensibilidad: 0.43,
                    especificidad: 0.89,
                    LRpositive : 3.91,
                    LRnegative : 0.64,
                    masInfo :  [""]
        )
        listaTests.append(test)
        
        
        test = Test(name: "Test de Yergason",
                    image : #imageLiteral(resourceName: "yergason"),
                    objetivo: "SLAP",
                    patientPosition: "Sentado con codo flexionado a 90º y en pronación de antebrazo",
                    clinicPosition : "Al lado. Una mano estabiliza el codo y la otra en 1/3 distal de antebrazo",
                    steps:  ["Se le pide al paciente la supinación de antebrazo", "Resistir la supinación."],
                    positivo : ["se reproduce el dolor del paciente","Si se nota un click sugiere hiperlaxitud o rotura del lig. transverso humeral."],
                    evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/28122541", "https://www.ncbi.nlm.nih.gov/pubmed/15007311"],
                    dor : 2.91,
                    sensibilidad: 0.20,
                    especificidad: 0.92,
                    LRpositive : 2.50,
                    LRnegative : 0.87,
                    masInfo :  ["Esta prueba se empezó a utilizar para diagnosticar problemas de la cabeza larga del biceps pero en la bibliografía no ha mostrado utilidad diagnóstica para ese objetivo y si para lesiones de labrum."]
        )
        listaTests.append(test)


        
        test = Test(name: "Crank test. Test de aprensión",
                    image : #imageLiteral(resourceName: "anterior aprension test"),
                    objetivo: "SLAP",
                    patientPosition: "Sentado o de pie",
                    clinicPosition : "detrás del paciente",
                    steps:  ["lleva el brazo a 90º de abd y 90º de rotación externa", "con la otra mano sujeta el hombro con el pulgar detrás y los demas dedos delante", "se acentua la rotacion externa y la retropulsion con el pulgar de atrás hacia delante"],
                    positivo : ["provoca aprension"],
                    evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/16818971"],
                    dor : 69.65,
                    sensibilidad: 0.72,
                    especificidad: 0.96,
                    LRpositive : 20.2,
                    LRnegative : 0.29,
                    masInfo :  ["la retropulsión y la rotación externa tienen que ser cuidadosas ya que existe riesgo de luxación anterior.", "El test de Fulco es una prueba similar pero se realiza con el paciente tumbado en la camilla con el brazo por fuera de esta."]
            
        )
        
        listaTests.append(test)

        test = Test(name: "Anterior apprehension, Test de Fulco",
                    image : #imageLiteral(resourceName: "Test Aprehension"),
                    objetivo: "SLAP",
                    patientPosition: "Tumbado con el brazo por fuera de la camilla",
                    clinicPosition : "Con una mano estabiliza el hombro y con la otra agarra la muñeca",
                    steps:  ["Se lleva el hombro a 90º de abd", "Se flexiona el codo 90º", "Se lleva el hombro a rotacion externa"],
                    positivo : ["se observa aprensión en la cara del paciente"],
                    evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/28122541", ],
                    dor : 2.32,
                    sensibilidad: 0.74,
                    especificidad: 0.45,
                    LRpositive : 1.35,
                    LRnegative : 0.58,
                    masInfo :  ["se suelen utilizar conjuntamente los de de aprensión, recolocación de Jobe y sorpresa (surprise Test)", "los dos primeros tests realizados conjuntamente han mostrado una sensibilidad de 0.38 (38%) y una especificidad de 0.93 (93%) para la detección de patología del labrum anterior."]
        )
        listaTests.append(test)
      
        
        test = Test(name: "Relocation Test",
                    image : #imageLiteral(resourceName: "Relocation_test"),
                    objetivo: "SLAP",
                    patientPosition: "sentado.",
                    clinicPosition : "Al lado. Con una mano estabiliza el hombro y otra sostiene la muñeca",
                    steps:  ["se lleva a abd de 90º y rotación externa", "la mano proximal empuja el hombro en sentido descendente para recentrarla"],
                    positivo : ["desaparece el dolor o la aprensión."],
                    evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/28122541"],
                    dor : 1.38,
                    sensibilidad: 0.61,
                    especificidad: 0.47,
                    LRpositive : 1.15,
                    LRnegative : 0.83,
                    masInfo :  ["Tambien se puede realizar en supino." , "Si el dolor era causado por una inestabilidad si que se verá aliviado al realizar la maniobra de recolocación, si lo causaba un impingement no."]
        )
        
        listaTests.append(test)
            
            test = Test(name: "surprise Test",
            image : #imageLiteral(resourceName: "surprise test "),
            objetivo: "SLAP",
            patientPosition: "decúbito supino, con abd de 90º y rotación externa.",
            clinicPosition : "al lado. empujando el hombro desde posterior",
            steps:  ["el clínico libera la presión posterior sin cuidado de producir dolor y aprensión.", ""],
            positivo : ["el paciente refiere dolor y aprensión."],
            evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/14977651",
                        "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4935037/"],
            dor : 25.81,
            sensibilidad: 0.82,
            especificidad: 0.86,
            LRpositive : 5.42,
            LRnegative : 0.21,
            masInfo :  ["un analisis mostró este test como el más presiso para la inestabilidad, con una sensibilidad de 0.64 y una especidad de 0.99 (99%)",
                        "https://www.ncbi.nlm.nih.gov/pubmed/22773322"]
            )
            
            listaTests.append(test)


        
        test = Test(name: "Test del biceps, speed test",
                    image : #imageLiteral(resourceName: "speed"),
                    objetivo: "lesion de SLAP",
                    patientPosition: "hombro en flexion de 90º",
                    clinicPosition : "en lado afecto,mano estabilizando el hombro y la otra en 1/3 distal del antebrazo",
                    steps:  ["se le pide al paciente qeu mantenga la posición", "el clínico intenta descender el antebrazo"],
                    positivo : ["dolor en el canal bicipital. Si siente dolor porfundo quizás implique el labrum"],
                    evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/28122541",//rev sis 2017
                                "https://www.ncbi.nlm.nih.gov/pubmed/15007311"],//level 1. 2004
                    dor : 1.73,
                    sensibilidad: 0.20,
                    especificidad: 0.88,
                    LRpositive : 1.67,
                    LRnegative : 0.91,
                    masInfo :  ["accuracy de 0.57"]
            )
            listaTests.append(test)
        
        test = Test(name: "biceps load test II",
                    image : #imageLiteral(resourceName: "biceps load test 2"),
            objetivo: "SLAP en aunsecia de inestabilidad.",
            patientPosition: " en decúbito supino ",
            clinicPosition : "sentado al lado afecto del paciente",
            steps:  ["se abduce el brazo del paciente 120º con el codo flexionado 90º y el antebrazo en supinación.", "llevar el brazo a rotación externa máxima.", "se le pide al paciente que haga una flexión de codo que el clínico resistirá."],
            positivo : ["se reproduce un dolor familiar al paciente o se incrementa durante la flexión de codo. "],
            evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/11172245", "https://www.ncbi.nlm.nih.gov/pubmed/22036538"],
            dor : 219.83,
            sensibilidad: 0.90,
            especificidad: 0.97,
            LRpositive : 26.38,
            LRnegative : 0.11,
            masInfo :  ["se distingue del biceps load test I en que el BLT2 evalua una lesion aislada de SLAP  en ausencia de inestabilidad.", ""]
            )
            
            listaTests.append(test)

       
        test = Test(name: "BIceps Load test I",
                    image : #imageLiteral(resourceName: "Biceps load test 1"),
            objetivo: "SLAP en luxaciones recidevantes.",
            patientPosition: "En supino.",
            clinicPosition : "Al lado del paciente, sostiene el brazo por el codo y la muñeca.",
            steps:  ["se lleva el brazo a una posicion de aprensión (abd 90º + rot. externa máxima con el antebrazo en supinación.", "se le pide al paciente que flexione el codo contra la resistencia del clínico."],
            positivo : ["si mejora la aprension indica uqe no hay lesion de SLAP"],
            evidence: ["", "https://www.ncbi.nlm.nih.gov/pubmed/10352763"],//el segundo enlace es donde se describe la prueba.
            dor : 219.83,
            sensibilidad: 0.90,
            especificidad: 0.97,
            LRpositive : 26.38,
            LRnegative : 0.11,
            masInfo :  ["Este test está en desuso por no haber mostrado buenos resistados en estudios de validez de pruebas diagnósticas."]
            )
            
            listaTests.append(test)

        
        
        
            
        
            
      /*  test = Test(name: "internal rotation resistance test.IRRT",
                    image : ,
            objetivo: "valorar la integridad del tendón subescapular",
            patientPosition: "tumbado con el hombro a 90º de abducción y rotación externa máxima",
            clinicPosition : "al lado del paciente con una mano estabilizando el hombro y otra en la muñeca",
            steps:  ["se le pide al paciente que haga una rotación interna", "se resiste la rotación interna"],
            positivo : ["Se reprocduce el dolor?"],
            evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/24337464"],
            icc : 0,
            sensibilidad: 0.76,
            especificidad: ,
            LRpositive : ,
            LRnegative :
            masInfo :  [""]
            )
         
            listaTests.append(test)
        */
            
            
//mark:IMPINGEMENT SUBACROMIAL
            
            
        test = Test(name: "Test de Hawkins-Kennedy",
                    image : #imageLiteral(resourceName: "hawkins-kennedy"),
            objetivo: "Impingement subacromial",
            patientPosition: "Brazo relajado en posición anatómica",
            clinicPosition : "Una mano agarra el codo del paciente y la otra la muñeca",
            steps:  ["El hombro se lleva pasivamente a flexión de 90º", "Se flexiona el codo 90º", "se lleva a rotación interna"],
            positivo : ["Aparece dolor y síntomas de impingement"],
            evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/28122541"],
            dor : 0,
            sensibilidad: 0.58,
            especificidad: 0.67,
            LRpositive : 1.76,
            LRnegative :0.63,
            masInfo :  [""]
            
            )
            
            listaTests.append(test)
        
        test = Test(name: "Test de Neer",
                    image : #imageLiteral(resourceName: "Test de Neer") ,
                    objetivo: "Síndrome subacromial",
                    patientPosition: "Sentado",
                    clinicPosition : "Al lado del paciente. una toma en muñeca y otra en escápula.",
                    steps:  ["se eleva pasivamente el brazo en abd, flexión y rotacion interna", "la otra mano mantiene bloqueada la escápula"],
                    positivo : ["aparece dolor"],
                    evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/28122541"],
                    dor : 0,
                    sensibilidad: 0.59,
                    especificidad: 0.60,
                    LRpositive : 1.48,
                    LRnegative : 0.68,
                    masInfo :  [""]
            )
        listaTests.append(test)
        
        test = Test(name: "Arco doloroso",
                    image : #imageLiteral(resourceName: "arco doloroso"),
                    objetivo: "compromiso subacromial",
                    patientPosition: "Sentado o de pie",
                    clinicPosition : "Al lado",
                    steps:  ["El paciente eleva activamente el brazo"],
                    positivo : ["el dolor aparece alrededor de los 60º-90º y desaparece a los 120º"],
                    evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/15995110"],
                    dor : 0,
                    sensibilidad: 0.74,
                    especificidad: 0.81,
                    LRpositive : 3.9,
                    LRnegative : 0.32,
                    masInfo :  [""]
            )
            listaTests.append(test)

            
//MARK: ARTICIULACION ACROMIOCLAVICULAR
            test = Test(name: "Test de O´Brien o Compresion activa de la art",
            image : #imageLiteral(resourceName: "O´Brien Test compresion activa"),
            objetivo: "lesión de ACC",
            patientPosition: "De pie",
            clinicPosition : "al lado del paciente",
            steps:  ["el paciente realiza una flexion de 90º, add horizontal de unos 15º y rotación interna", "el clínico presiona hacia abajo y el paciente intenta resistir", "el test es repetido pero con el antebrazo subinado y el hombro en rotación externa máxima."],
            positivo : ["siente dolor en el acromion en ambas maniobras."],
            evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/15090381"],
            dor : 0,
            sensibilidad: 0.41,
            especificidad: 0.95,
            LRpositive : 8.2,
            LRnegative : 0.62,
            masInfo :  [""]
            )
            
            listaTests.append(test)

            /*
             test = Test(name: "cross body adduction stress test",
             image : ,
             objetivo: "",
             patientPosition: "",
             clinicPosition : "",
             steps:  ["", ""],
             positivo : [""],
             evidence: ["],
             dor : ,
             sensibilidad: ,
             especificidad: ,
             LRpositive : ,
             LRnegative :
             masInfo :  [""]
             )
             
             listaTests.append(test)
             */

            /*
             test = Test(name: "acromioclavivular resisted extension test",
             image : ,
             objetivo: "",
             patientPosition: "",
             clinicPosition : "",
             steps:  ["", ""],
             positivo : [""],
             evidence: ["],
             dor : ,
             sensibilidad: ,
             especificidad: ,
             LRpositive : ,
             LRnegative :
             masInfo :  [""]
             )
             
             acromTests.append(test)
             */

            
            
           /*
            test = Test(name: "",
            image : ,
            objetivo: "",
            patientPosition: "",
            clinicPosition : "",
            steps:  ["", ""],
            positivo : [""],
            evidence: ["],
            dor : ,
            sensibilidad: ,
            especificidad: ,
            LRpositive : ,
            LRnegative :
            masInfo :  [""]
        )
        
         listaTests.append(test)
        */
    }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return self.section.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
     
        return self.section[section]
    }
    
        /* var title = ""
        
        
        switch section {
        case 0:
            title = "Tendón Supraespinoso"
        case 1:
            title = "Tendón Infraespinoso"
        case 2:
            title = "Tendón Subescapular"
        case 3:
            title = "Porción Larga del Biceps"
        case 4:
            title = "SLAP"
        case 5:
            title = "Impingement Subacromial"
        case 6:
            title = "Art. Acromioclavicular"
            
        default:
            break
            
        }
        
        return title
        
    }*/
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        //   return self.listaTests.count
        
       
        
           switch section {
        case 0:
            return 4
        case 1:
            return 2
        case 2:
            return 1
        case 3:
            return 2
        case 4:
            return 9
        case 5:
            return 3
        case 6:
            return 1
        default:
            return 0
        }

    
    
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let elTestDeLaCelda = listaTests[indexPath.row]
        let cellID = "HombroTestCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! HombroTableViewCell
        cell.nameLabel.text = elTestDeLaCelda.name
        cell.cellImageView.image = elTestDeLaCelda.image
        cell.objetivoLabel.text = elTestDeLaCelda.objetivo

        cell.cellImageView.layer.cornerRadius = 40.0 //crea una capa circular de 42 pixels de radio
        cell.cellImageView.clipsToBounds = true// recorta hasta los bordes.


     /*  switch indexPath.section {
       case 0:
        
      
       case 1:
               let losTest = infraTests[indexPath.row]
           cell.nameLabel.text = losTest.name
        cell.cellImageView.image = losTest.image
           cell.objetivoLabel.text = losTest.objetivo
       case 2:
        
        let subTest = subesTests[indexPath.row]
        cell.nameLabel.text = subTest.name
        cell.cellImageView.image = subTest.image
        cell.objetivoLabel.text = subTest.objetivo
       case 3:
        let larTest = largaTests[indexPath.row]
        cell.nameLabel.text = larTest.name
        cell.cellImageView.image = larTest.image
        cell.objetivoLabel.text = larTest.objetivo
       case 4:
        let slaTest = slapTests[indexPath.row]
        cell.nameLabel.text = slaTest.name
        cell.cellImageView.image = slaTest.image
        cell.objetivoLabel.text = slaTest.objetivo
        
       case 5:
        let pigTest = impigTests[indexPath.row]
        cell.nameLabel.text = pigTest.name
        cell.cellImageView.image = pigTest.image
        cell.objetivoLabel.text = pigTest.objetivo
        
       case 6:
        let cromTest = acromTests[indexPath.row]
        cell.nameLabel.text = cromTest.name
        cell.cellImageView.image = cromTest.image
        cell.objetivoLabel.text = cromTest.objetivo
        
        
       
       default:
                 break
       }
        let elTestDeLaCelda : Test
        
        switch indexPath.section {
        case 0:
            let elTestDeLaCelda = listaTests[indexPath.row]
        case 1 :
            var elTestDeLaCelda = infraTests[indexPath.row]
        case 2:
            var elTestDeLaCelda = subesTests[indexPath.row]
        case 3:
            var elTestDeLaCelda = largaTests[indexPath.row]
        case 4:
            var elTestDeLaCelda = slapTests[indexPath.row]
        case 5:
            let elTestDeLaCelda = impigTests[indexPath.row]
        case 6:
            let elTestDeLaCelda = acromTests[indexPath.row]
        
        
        
        default:
            break
        }
        */
     //   let elTestDeLaCelda = listaTests[indexPath.row]
/*
        if let icc = elTestDeLaCelda.dor {
            cell.iccLabel.text = "\(icc)"
        }else {
            cell.iccLabel.text = "?"
        }
        
        if let sensibilidad = elTestDeLaCelda.sensibilidad {
            cell.sensLabel.text = "\(sensibilidad * 100)%"
        }else {
            cell.sensLabel.text = "?"
        }
      
        if let especificidad = elTestDeLaCelda.especificidad {
            cell.especfLabel.text = "\(especificidad * 100)%"
        }else {
            cell.especfLabel.text = "?"
        }
        if let LRpositivo = elTestDeLaCelda.LRpositive {
            cell.LRpositiveLabel.text = "\(LRpositivo)"
        }else {
            cell.LRpositiveLabel.text = "?"
        }

        if let LRnegativo = elTestDeLaCelda.LRnegative {
            cell.LRnegativeLabel.text = "\(LRnegativo)"
            
        }else {
            cell.LRnegativeLabel.text = "?"
        }
       // cell.LRnegativeLabel.text = "\(elTestDeLaCelda.LRnegative)!"

              switch elTestDeLaCelda.dor! {
        case 0...0.10:
            cell.iccLabel.backgroundColor = UIColor.green
        case 0.10...0.20:
            cell.iccLabel.backgroundColor = UIColor.blue
        case 0.21 ... 0.50:
            cell.iccLabel.backgroundColor = UIColor.orange
        case 0.51 ... 1.0:
            cell.iccLabel.backgroundColor = UIColor.red
        default:
            cell.iccLabel.backgroundColor = UIColor.clear
        }
        
        switch elTestDeLaCelda.LRpositive! {
        case 10.0...100.0:
            cell.LRpositiveLabel.backgroundColor = UIColor.green
        case 5.0...9.99:
            cell.LRpositiveLabel.backgroundColor = UIColor.blue
        case 2.0 ... 4.99:
            cell.LRpositiveLabel.backgroundColor = UIColor.orange
        case 1.0 ... 1.99:
            cell.LRpositiveLabel.backgroundColor = UIColor.red
        default:
            cell.LRpositiveLabel.backgroundColor = UIColor.clear
        }
        
        switch elTestDeLaCelda.LRnegative! {
        case 0...0.10:
            cell.LRnegativeLabel.backgroundColor = UIColor.green
        case 0.10...0.20:
            cell.LRnegativeLabel.backgroundColor = UIColor.blue
        case 0.21 ... 0.50:
            cell.LRnegativeLabel.backgroundColor = UIColor.orange
        case 0.51 ... 1.0:
            cell.LRnegativeLabel.backgroundColor = UIColor.red
        default:
            cell.LRnegativeLabel.backgroundColor = UIColor.clear
        }
        
        switch elTestDeLaCelda.sensibilidad! {
        case 0.80...1.0:
            cell.sensLabel.backgroundColor = UIColor.green
        case 0.60...0.799:
            cell.sensLabel.backgroundColor = UIColor.blue
        case  0.40...0.599:
            cell.sensLabel.backgroundColor = UIColor.orange
        case 0.0...0.3999:
            cell.sensLabel.backgroundColor = UIColor.red
        default:
            cell.sensLabel.backgroundColor = UIColor.clear
        }
        
        switch elTestDeLaCelda.especificidad! {
        case 0.800...1.0:
            cell.especfLabel.backgroundColor = UIColor.green
        case 0.60...0.7999:
            cell.especfLabel.backgroundColor = UIColor.blue
        case 0.400...0.599:
            cell.especfLabel.backgroundColor = UIColor.orange
        case  0.0...0.399:
            cell.especfLabel.backgroundColor = UIColor.red
        default:
            cell.especfLabel.backgroundColor = UIColor.clear
        }

                                                                                
        
      /*  if elTestDeLaCelda.especificidad! <= 100.0 {
            cell.especfLabel.backgroundColor = UIColor.blue
        }else {
            cell.especfLabel.backgroundColor = UIColor.red
        }*/
        
        
        
        // Esto sirve para cambiar el color de la celda dependiendo del numero que entrega la sensibilidad del test.
 
        /*if elTestDeLaCelda.sensibilidad > 10 && elTestDeLaCelda.sensibilidad < 100 {
            cell.sensLabel.backgroundColor = UIColor.green
            cell.sensLabel.tintColor = UIColor.white
        }*/
        
        /*elTestDeLaCelda.sensibilidad {
        case 10.0...100.0:
        
       
            cell.sensLabel.tintColor = UIColor.green
        case 5.0...9.99:
         cell.sensLabel.tintColor = UIColor.blue
        case 2.0 ... 4.9:
            cell.sensLabel.tintColor = UIColor.orange
        case 1.0 ... 1.99:
            cell.sensLabel.tintColor = UIColor.red
        default:
         cell.sensLabel.tintColor = UIColor.clear
        }
        
        switch elTestDeLaCelda.especificidad {
        case O...3:
            cell.especificidad.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
        case 3...5:
            cell.especificidad.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
            
        case 5...10:
            cell.especificidad.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
            
        default:
            cell.especificidad.tintColor = UIColor.clear
        }
        
        
        switch elTestDeLaCelda.LRpositive {
        case O...3:
            cell.tintColor = UIColor.red
        case 3...5:
            cell.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
            
        case 5...10:
            cell.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
            
        default:
            cell.tintColor = UIColor.clear
        }
        
        
        switch elTestDeLaCelda.LRnegative {
        case O...3:
            cell.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
        case 3.0...5.0:
            cell.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
            
        case 5.0...10.0:
            cell.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
            
        default:
            cell.tintColor = UIColor.clear
        }
         */ */
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showTestDetail"{ //si el segue selecionado es "showTestDetail" entonces..
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                // si puedes recuperar el indexpath  selecionado
              
                    let selectedTest = self.listaTests[indexPath.row]
                    let destinationViewController = segue.destination  as! DetailViewController
                    destinationViewController.test = selectedTest


                }
                //
              /*  let selectedTest = self.listaTests[indexPath.row]
                // crea una constante con la receta de la celda selecionada.
                let destinationViewController = segue.destination  as! DetailViewController
                // crea un viewController de destino que sea seguro un DetailViewController
                destinationViewController.test = selectedTest
                // el test del viewController de destino sera el test selecionado.                      */
            }
        }

    
    
    }
    


