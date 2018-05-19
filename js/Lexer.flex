/*------------  1ra Area: Codigo de Usuario ---------*/
//------> Paquetes,importaciones
package Complementos;
import java_cup.runtime.*;
import java.util.LinkedList;

/*------------  2da Area: Opciones y Declaraciones ---------*/
%%
%{
    //----> Codigo de usuario en sintaxis java
    //----> Codigo de usuario en sintaxis java
    public static LinkedList<TError> TablaEL = new LinkedList<TError>(); 
%}

//-------> Directivas
%public 
%class Lexer
%cupsym sym
%cup
%char
%column
%full
%ignorecase
%line
%unicode
/**

**/

//------> Expresiones Regulares

WHITE=[ \t\r\n]
Sustantivo = "bed"|"bill"|"bird"|"blood"|"boat"|"body"|"bone"|"book"|"bottom"|"box"|"boy"|"brother"|"building"|"business"|"call"|"capital"|"case"|"cat"|"cause"|"cent"|"center"|"century"|"chance"|"change"|"check"|"child""church"|"circle"|"city"|"class"|"clothes"|"cloud"|"coast"|"color"|"company"|"consonant"|"copy"|"corn"|
"cotton"|"country"|"course"|"cow"|"crowd"|"day"|"dictionary"|"direction"|"distance"|"doctor"|"dollar"|"door"|"ear"|"earth"|"egg"|"energy"|"example"|"experience"|"eye"|"game"|"garden"|"gas"|"girl"|"glass"|"gold"|"government"|"grass"|"group"|"hair"|"hand"|"hat"|"head"|"heart"|"heat"|"history"|"hole"|
"home"|"horse"|"hour"|"house"|"ice"|"idea"|"inch"|"bank"|"industry"|"information"|"insect"|"interest"|"iron"|"island"|"job"|"key"|"lake"|"land"|"language"|"law"|"leg"|"level"|"lie"|"life"|"light"|"line"|"list"|"machine"|"man"|"map"|"material"|"meat"|"middle"|"mile"|"milk"|"mind"|"minute"|"money"|
"month"|"moon"|"mouth"|"music"|"nation"|"night"|"nose"|"note"|"number"|"object"|"ocean"|"office"|"paragraph"|"park"|"part"|"party"|"past"|"person"|"pound"|"president"|"problem"|"product"|"property"|"question"|"race"|"radio"|"rain"|"reason"|"record"|"region"|"ring"|"river"|"road"|"rock"|"row"|"rule"|
"sand"|"school"|"science"|"sea"|"seat"|"second"|"sentence"|"set"|"side"|"sign"|"sister"|"size"|"skin"|"snow"|"soldier"|"solution"|"action"|"age"|"air"|"animal"|"answer"|"apple"|"art"|"baby"|"back"|"ball""page"|"pair"|"paper"|"son"|"spring"|"square"|"star"|"state"|"stop"|"street""student"|"sugar"|
"sun"|"village"|"vowel"|"war"|"weather"|"weight"|"wife"|"window"|"winter"|"woman"|"word"|"world"|"year"


//ADJETIVOS

Ad_Posesivo = "my"|"your"|"his"|"her"|"its"|"our"|"your"|"their"

Ad_Demostrativo = "this"|"that"|"these"|"those"

Ad_Calificativo = "tall"|"high"|"short"|"low"|"long"|"large"|"big"|"fit"|"small"|"sad"|"angry"|"happy"|"nervous"|"upset"|"crazy"|"hungry"|"starving"|
"sympathetic"|"round"|"triangular"|"square"|"sharp"|"rectangular"|"wide"|"sensible"|"friendly"|"polite"|"lazy"|"clever"|"nice"|"dirty"|"wet"|"dry"|
"stinky"|"great"|"healthy"|"hot"|"cold"|"loud"|"sweet"|"salty"|"bitter"|"sour"|"delicious"|"disgusting"|"spicy"|"soft"|"bland"|"icy"|"fresh"|
"spanish"|"english"|"french"|"italian"|"awful"|"boiling"|"fascinating"|"freezing"|"filthy"|"furious"|"huge"|"spotless"|"tiny"|"wonderful"|"blue"|"dark"

Ad_Num_Cardinal = "zero"|"one"|"two"|"three"|"four"|"five"|"six"|"seven"|"eight"|"nine"|"ten"|"eleven"|"twelve"|"thirteen"|"fourteen"|"fifteen"|"sixteen"|"seventeen"|"eighteen"|"nineteen"|"twenty"|"thirty"|"fourty"|"fifty"|"sixty"|"seventy"|"eighty"|"ninety"|"ninety-one"|"ninety-two"|"one hundred"|
"two hundred"|"one thousand"|"ten thousand"|"one million"

Ad_Num_Ordinal = "first"|"second"|"third"|"fourth"|"fifth"|"sixth"|"seventh"|"eighth"|"ninth"|"tenth"|"eleventh"|"twelfth"|"thirteenth"|"fourteenth"|"fifteenth"|"sixteenth"|
"seventeenth"|"eighteenth"|"nineteenth"|"twentieth"|"thirtieth"|"fortieth"|"fiftieth"|"sixtieth"|"seventieth"|"eightieth"|"ninetieth"|"ninety-first"|
"ninety-second"|"ninety-third"|"ninety-fourth"|"one hundredth"|"one thousandth"|"one millionth"

Ad_Indefinido = "all"|"any"|"both"|"each"|"either"|"enough"|"few"|"less"|"little"|"much"|"more"|"many"|"one"|"other"|"others"|"several"|"some"|"such"

//ARTICULOS

Ar_Definido = "the"
Ar_Indefinido = "an"|"a"

//PRONOMBRES

PRON_I = "I"
PRON_PER_SING = "I"|"he"|"she"|"it"
PRON_PER_PLUR = "we"|"you"|"they"
PRO_PERSON = "I"|"he"|"she"|"it"|"we"|"you"|"they"
Pron_Demostrativo = "this"|"that"|"these"|"those"
Pron_Interrogativo = "who"|"whom"|"whose"|"what"|"which"

//VERBO TO BE

VER_SING = "is"
VER_PLUR = "are"
VER_AM = "am"

//VERBOS REGULARES

VB_Regular = "abandon"|"abolish"|"absolve"|"absorb"|"abuse"|"accede"|"accelerate"|"accent"|"accept"|"accuse"|"accustom"|"archieve"|"acquire"|"act"|"add"|"address"|
"admire"|"admit"|"adore"|"adorn"|"advance"|"advertise"|"advise"|"affirm"|"agree"|"allow"|"amount"|"amuse"|"announce"|"annoy"|"answer"|"apologize"|
"appear"|"appoint"|"approach"|"approve"|"arrange"|"arrive"|"ask"|"assure"|"astonish"|"attack"|"attempt"|"attend"|"attract"|"avoid"|"bathe"|"beg"|
"believe"|"belong"|"blame"|"book"|"call"|"carry"|"cash"|"cease"|"change"|"check"|"claim"|"clean"|"clear"|"climb"|"close"|"collect"|"comb"|"combine"|
"command"|"commit"|"compare"|"complain"|"compose"|"conceal"|"consider"|"consist"|"contain"|"continue"|"copy"|"correct"|"cough"|"count"|"cover"|
"cross"|"crown"|"cry"|"damage"|"dance"|"dawn"|"deceive"|"decide"|"declare"|"defend"|"deliver"|"desire"|"despise"|"destroy"|"detach"|"develop"|"devote"|
"devour"|"discover"|"dislike"|"disturb"|"divide"|"drag"|"drop"|"dry"|"earn"|"elect"|"employ"|"enclose"|"encourage"|"end"|"enjoy"|"enter"|"estabilish"|
"esteem"|"evoke"|"exchange"|"expect"|"explain"|"explode"|"expose"|"express"|"extract"|"fail"|"fear"|"fetch"|"fill"|"finish"|"fish"|"fit"|"fix"|"float"|
"fold"|"follow"|"found"|"gain"|"gamble"|"gather"|"govern"|"grant"|"greet"|"guard"|"guess"|"handle"|"hang"|"happen"|"hate"|"heat"|"help"|"hire"|"hope"|
"hunt"|"hurry"|"imagine"|"imply"|"import"|"impress"|"improve"|"include"|"increase"|"inquire"|"intend"|"invent"|"invite"|"iron"|"join"|"joke"|"jump"|
"justify"|"kick"|"kill"|"kiss"|"knock"|"land"|"last"|"laugh"|"lie"|"like"|"listen"|"live"|"look"|"love"|"lower"|"maintain"|"marry"|"measure"|"measure"|
"mend"|"mention"|"move"|"name"|"note"|"notice"|"number"|"obley"|"obligue"|"occupy"|"offer"|"open"|"order"|"organize"|"pack"|"paint"|"pass"|"permit"|
"place"|"play"|"please"|"possess"|"practise"|"prefer"|"prepare"|"present"|"produce"|"promise"|"propose"|"pull"|"punish"|"push"|"rain"|"reach"|"receive"|
"refer"|"refyse"|"relieve"|"remain"|"remember"|"remind"|"remove"|"rent"|"repair"|"repeat"|"reply"|"report"|"request"|"require"|"rest"|"return"|"rush"|
"sail"|"save"|"seem"|"sharpen"|"shout"|"sign"|"smile"|"smoke"|"sound"|"start"|"stop"|"study"|"suffer"|"suggest"|"suppose"|"surprise"|"talk"|"tame"|"taste"|
"tire"|"touch"|"test"|"thank"|"tie"|"translate"|"travel"|"trouble"|"trust"|"try"|"turn"|"unite"|"use"|"vary"|"visit"|"wait"|"walk"|"want"|"wash"|"watch"|
"weigh"|"wish"|"work"|"worry"|"wound"

//VERBOS IRREGULARES

VB_Irregulares = "be"|"become"|"begin"|"bite"|"blow"|"break"|"bring"|"build"|"buy"|"can"|"catch"|"choose"|"come"|"cost"|"cut"|"do"|"draw"|"drink"|"drive"|"eat"|"fall"|"feel"|
"fight"|"find"|"fly"|"forget"|"forgive"|"freeze"|"get"|"give"|"go"|"grow"|"hang"|"have"|"hide"|"hit"|"hold"|"hurt"|"keep"|"know"|"lead"|"leave"|"lend"|
"let"|"lose"|"make"|"mean"|"meet"|"pay"|"put"|"read"|"ride"|"ring"|"rise"|"run"|"say"|"see"|"sell"|"send"|"set"|"show"|"shut"|"sing"|"sink"|"sit"|"sleep"|
"speak"|"spend"|"steal"|"swim"|"take"|"teach"|"tell"|"think"|"throw"|"understand"|"wake"|"wear"|"win"|"write"|"was"|"became"|"began"|"bit"|"blew"|
"broke"|"brought"|"built"|"bought"|"could"|"caught"|"chose"|"came"|"cost"|"cut"|"did"|"drew"|"drank"|"drove"|"ate"|"fell"|"felt"|"fought"|"found"|"flew"|
"forgot"|"forgave"|"froze"|"got"|"gave"|"went"|"grew"|"hung"|"had"|"hid"|"hit"|"held"|"hurt"|"kept"|"knew"|"led"|"left"|"lent"|"let"|"lost"|"made"|"meant"|
"met"|"paid"|"put"|"read"|"rode"|"rang"|"rose"|"ran"|"said"|"saw"|"sold"|"sent"|"set"|"showed"|"shut"|"sang"|"sank"|"sat"|"slept"|"spoke"|"spent"|"stole"|
"swam"|"took"|"taught"|"told"|"thought"|"threw"|"understood"|"woke"|"wore"|"won"|"wrote"|"been"|"become"|"begun"|"bitten"|"blown"|"broken"|"brought"|
"built"|"bought"|"been able"|"caught"|"chosen"|"come"|"cost"|"cut"|"done"|"drawn"|"drunk"|"drive"|"eaten"|"fallen"|"fougth"|"found"|"flown"|"forgotten"|
"forgiven"|"frozen"|"got gotten"|"given"|"gone"|"grown"|"hung"|"had"|"hidden"|"hit"|"held"|"hurt"|"kept"|"know"|"led"|"left"|"lent"|"lost"|"made"|"meant"|
"met"|"paid"|"put"|"read"|"ridden"|"rung"|"risen"|"run"|"said"|"seen"|"sold"|"sent"|"set"|"shown"|"shut"|"sung"|"sunk"|"sat"|"slept"|"spoken"|"spent"|
"stolen"|"swum"|"taken"|"taught"|"told"|"thought"|"thrown"|"understood"|"woken"|"worn"|"won"|"written"|"was"|"were"

//ADVERBIOS

ADB_Tiempo = "now"|"yesterday"|"yesterday"|"today"|"tomorrow"|"before"|"last night"|"still"|"when"|"afterwards"|"then"|"never"|"then"|"while"|"never"|"first"|"always"|
"late"|"still"|"yet"|"already"
 
ADB_Lugar = "here"|"there"|"over there"|"here"|"outside"|"down"|"before"|"around"|"upstairs"|"back"|"close"|"under"|"where"|"onin front"|"ofoutside"|"far"
  
ADB_Cantidad = "something"|"nothing"|"hardly"|"anough"|"almost"|"how much"|"too much"|"more"|"less"|"much"|"little"|"all"|"only"|"half"|"so"|"so much"
  
ADB_Modo = "so"|"well"|"bad"|"almost"|"how"|"slowly"|"fast"|"slow"|"fast"
  
ADB_Afirmacion = "if"|"of course"|"exact"|"really"|"certainly"|"surely"|"fair"|"already"
 
ADB_Negacion = "no"|"never"|"not"|"never"

ADB_Duda = "perhaps"|"probably"

//PREPOSICIONES

Preposicion = "about"|"above"|"across"|"after"|"against"|"among"|"around"|"as"|"at"|"before"|"behind"|"below"|"beneath"|"beside"|"between"|"beyond"|"but"|"by"|"despite"|
"down"|"during"|"except"|"for"|"from"|"in"|"inside"|"into"|"near"|"next"|"of"|"on"|"opposite"|"outside"|"over"|"per"|"plus"|"round"|"since"|"than"|"through"|
"till"|"to"|"toward"|"under"|"unlike"|"until"|"up"|"via"|"with"|"whithin"|"whitout"|"according to"|"because of"|"close to"|"due to"|"except to"|
"far from"|"inside of"|"instead of"|"near to"|"nex to"|"outside of"|"prior to"|"as far as"|"as well as"|"in addition to"|"in front of"|"in spite of"|"on behalf of"|"on top of"

//CONJUNCIONES COORDINANTES

CC_Copulativas = "and"|"not only"|"but also"|"not only"|"but"|"as well"|"both"|"and"|"no sooner"|"than"

CC_Adversativas = "but"|"however"|"nonetheless"|"nevertheless"|"yet"|"even so"|"still"|"instead"|"on the contrary"

CC_Distributivas = "as soon"|"as"|"ya"|"already"|"here"|"there"|"these"|"those"|"or"|"or good"

CC_Disyuntivas = "or"|"either"|"neither"|"nor"|"whether or"|"or else"|"otherwise"

CC_Explicativas = "that is to say"|"rather"|"it's more"|"that is"|"this is"|"rather"

//CONJUNCIONES SUBORDINANTES

CS_Condicionales = "if"|"whenever"|"as long as"|"whatever"

CS_Casuales = "anymore because"|"it because"|"because"|"since i"

CS_Consecutivas = "then"|"so"|"that it"|"so"|"in this way"|"therefore"

CS_Concesivas = "even if"|"by more than"

CS_Comparativas = "than"|"to"|"like"|"as well"

CS_Finales = "so that"|"to"

//INTERJECCION

Interjeccion = "wow"|"ouch"|"uh-huh"|"oops"|"hey"

//CONTRACCIONES

Contracciones = "i’m"|"you’re"|"he’s"|"she’s"|"you’re"|"it’s"|"we’re"|"you’re"|"they’re"

//SIGNOS DE PUNTUACION


//------> Estados

%%
/*------------  3raa Area: Reglas Lexicas ---------*/

//-----> Simbolos
//-------> Tokens Lexer

{Sustantivo} { System.out.println("Reconocio "+yytext()+" Sustantivo"); return new Symbol(sym.Sustantivo, yycolumn, yyline, yytext()); } 	
{PRON_PER_SING} { System.out.println("Reconocio "+yytext()+" Pronombre Singular"); return new Symbol(sym.PRON_PER_SING, yycolumn, yyline, yytext()); }  		
{PRON_PER_PLUR} { System.out.println("Reconocio "+yytext()+" Pronombre Plural"); return new Symbol(sym.PRON_PER_PLUR, yycolumn, yyline, yytext()); } 
{PRON_I} {System.out.println("Reconocio "+yytext()+" Pronombre I"); return new Symbol(sym.PRON_I, yycolumn, yyline, yytext()); }

{Pron_Demostrativo} { System.out.println("Reconocio "+yytext()+" Pronombre Demostrativo"); return new Symbol(sym.Pron_Demostrativo, yycolumn, yyline, yytext()); }	 		
{Pron_Interrogativo} { System.out.println("Reconocio "+yytext()+" Pronombre Interrogativo"); return new Symbol(sym.Pron_Interrogativo, yycolumn, yyline, yytext()); }		  
{VER_SING} { System.out.println("Reconocio "+yytext()+" Verbo Singular"); return new Symbol(sym.VER_SING, yycolumn, yyline, yytext()); }	  		
{VER_PLUR} {System.out.println("Reconocio "+yytext()+" Verbo Plural"); return new Symbol(sym.VER_PLUR, yycolumn, yyline, yytext()); }	  		
{VER_AM} {System.out.println("Reconocio "+yytext()+" Verbo Primera Persona"); return new Symbol(sym.VER_AM, yycolumn, yyline, yytext()); }
{PRO_PERSON} {System.out.println("Reconocio "+yytext()+" Pronombre Personal"); return new Symbol(sym.PRO_PERSON, yycolumn, yyline, yytext()); }
{Ar_Definido} { System.out.println("Reconocio "+yytext()+" Articulo Definido"); return new Symbol(sym.Ar_Definido, yycolumn, yyline, yytext()); }		
{Ar_Indefinido} { System.out.println("Reconocio "+yytext()+" Articulo Indefinido"); return new Symbol(sym.Ar_Indefinido, yycolumn, yyline, yytext()); }

{Ad_Posesivo} { System.out.println("Reconocio "+yytext()+" Adjetivo Posesivo"); return new Symbol(sym.Ad_Posesivo, yycolumn, yyline, yytext()); }
{Ad_Demostrativo} { System.out.println("Reconocio "+yytext()+" Adjetivo Demostrativo"); return new Symbol(sym.Ad_Demostrativo, yycolumn, yyline, yytext()); }		
{Ad_Calificativo} { System.out.println("Reconocio "+yytext()+" Adjetivo Calificativo"); return new Symbol(sym.Ad_Calificativo, yycolumn, yyline, yytext()); }		
//{Cardinal} { System.out.println("Reconocio "+yytext()+" Numero Cardinal"); return new Symbol(sym.Ad_Num_Cardinal, yycolumn, yyline, yytext()); }		
//{Ordinal}{ System.out.println("Reconocio "+yytext()+" Numero Ordinal"); return new Symbol(sym.Ad_Num_Ordinal, yycolumn, yyline, yytext()); }
{Ad_Indefinido} { System.out.println("Reconocio "+yytext()+" Adjetivo Indefinido"); return new Symbol(sym.Ad_Indefinido, yycolumn, yyline, yytext()); }	

{VB_Regular} { System.out.println("Reconocio "+yytext()+" Verbo Regular"); return new Symbol(sym.VB_Regular, yycolumn, yyline, yytext()); } 		
{VB_Irregulares} { System.out.println("Reconocio "+yytext()+" Verbo Irregular"); return new Symbol(sym.VB_Irregulares, yycolumn, yyline, yytext()); }		  		

{ADB_Tiempo} { System.out.println("Reconocio "+yytext()+" Adverbio Tiempo"); return new Symbol(sym.ADB_Tiempo, yycolumn, yyline, yytext()); }		  	
{ADB_Lugar} { System.out.println("Reconocio "+yytext()+" Adverbio Lugar"); return new Symbol(sym.ADB_Lugar, yycolumn, yyline, yytext()); }		
{ADB_Cantidad} { System.out.println("Reconocio "+yytext()+" Adverbio Cantidad"); return new Symbol(sym.ADB_Cantidad, yycolumn, yyline, yytext()); }	  		
{ADB_Modo} { System.out.println("Reconocio "+yytext()+" Adverbio Modo"); return new Symbol(sym.ADB_Modo, yycolumn, yyline, yytext()); }	  		
{ADB_Afirmacion} { System.out.println("Reconocio "+yytext()+" Adverbio Afirmacion"); return new Symbol(sym.ADB_Afirmacion, yycolumn, yyline, yytext()); }	  			
{ADB_Negacion} { System.out.println("Reconocio "+yytext()+" Adverbio Negacion"); return new Symbol(sym.ADB_Negacion, yycolumn, yyline, yytext()); }	  			
{ADB_Duda} { System.out.println("Reconocio "+yytext()+" Adverbio Duda"); return new Symbol(sym.ADB_Duda, yycolumn, yyline, yytext()); }		    		

{Preposicion} { System.out.println("Reconocio "+yytext()+" Premoposicion"); return new Symbol(sym.Preposicion, yycolumn, yyline, yytext()); }		  		
{CC_Copulativas} { System.out.println("Reconocio "+yytext()+" Contraccion Copulativa"); return new Symbol(sym.CC_Copulativas, yycolumn, yyline, yytext()); }		 		
{CC_Adversativas} { System.out.println("Reconocio "+yytext()+" Contraccion Copulativa"); return new Symbol(sym.CC_Adversativas, yycolumn, yyline, yytext()); }			  		
{CC_Distributivas} { System.out.println("Reconocio "+yytext()+" Contraccion Distributiva"); return new Symbol(sym.CC_Distributivas, yycolumn, yyline, yytext()); }			  		
{CC_Disyuntivas} { System.out.println("Reconocio "+yytext()+" Contraccion Disyuntiva"); return new Symbol(sym.CC_Disyuntivas, yycolumn, yyline, yytext()); }		  		
{CC_Explicativas} { System.out.println("Reconocio "+yytext()+" Contraccion Explicativa"); return new Symbol(sym.CC_Explicativas, yycolumn, yyline, yytext()); }		 			 		

{CS_Condicionales} { System.out.println("Reconocio "+yytext()+" Contraccion Condicional"); return new Symbol(sym.CS_Condicionales, yycolumn, yyline, yytext()); }		  		
{CS_Casuales} { System.out.println("Reconocio "+yytext()+" Contraccion Casuales"); return new Symbol(sym.CS_Casuales, yycolumn, yyline, yytext()); }		  	
{CS_Consecutivas} { System.out.println("Reconocio "+yytext()+" Contraccion Consecutiva"); return new Symbol(sym.CS_Consecutivas, yycolumn, yyline, yytext()); }		  		
{CS_Concesivas} { System.out.println("Reconocio "+yytext()+" Contraccion Concesivas"); return new Symbol(sym.CS_Concesivas, yycolumn, yyline, yytext()); }		  		
{CS_Comparativas} { System.out.println("Reconocio "+yytext()+" Contraccion Comparativas"); return new Symbol(sym.CS_Comparativas, yycolumn, yyline, yytext()); }		  			
{CS_Finales} { System.out.println("Reconocio "+yytext()+" Contraccion Final"); return new Symbol(sym.CS_Finales, yycolumn, yyline, yytext()); }	  		

{Interjeccion} { System.out.println("Reconocio "+yytext()+" Interjeccion"); return new Symbol(sym.Interjeccion, yycolumn, yyline, yytext()); }	  		
{Contracciones} { System.out.println("Reconocio "+yytext()+" Contraccion"); return new Symbol(sym.Contracciones, yycolumn, yyline, yytext()); }		  			



//------> Espacios
[ \t\r\n\f]             {/* Espacios en blanco, se ignoran */}
{WHITE} {/*Ignore*/}

//------> Errores Lexicos
                       //------> Errores Lexicos
.                       { System.out.println("Error Lexico"+yytext()+" Linea "+yyline+" Columna "+yycolumn);
                          TError datos = new TError(yytext(),yyline,yycolumn,"Error Lexico","Simbolo no existe en el lenguaje");
                          TablaEL.add(datos);}
