<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d7c14aa9-9080-4a29-893b-3b99c2ad5121(com.mbeddr.unlesss.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="2" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="p6ld" ref="r:0764bd79-eef9-46f0-a6fe-739a07a30bb2(com.mbeddr.build.build)" />
    <import index="3fk" ref="r:caa661d5-e529-469c-bb25-dfa7a83b768e(com.mbeddr.allScripts.build)" />
    <import index="al5i" ref="r:742f344d-4dc4-4862-992c-4bc94b094870(com.mbeddr.mpsutil.dev.build)" />
    <import index="90a9" ref="r:fb24ac52-5985-4947-bba9-25be6fd32c1a(de.slisson.mps.all.build)" />
    <import index="xsd6" ref="r:ca2b582e-fdcb-4767-9d74-cf61b47911f2(com.mbeddr.allInOne)" />
  </imports>
  <registry>
    <language id="698a8d22-a104-47a0-ba8d-10e3ec237f13" name="jetbrains.mps.build.workflow">
      <concept id="2769948622284546675" name="jetbrains.mps.build.workflow.structure.BwfTask" flags="ng" index="2VaFvF">
        <child id="2769948622284546679" name="subTasks" index="2VaFvJ" />
      </concept>
      <concept id="2769948622284546677" name="jetbrains.mps.build.workflow.structure.BwfSubTask" flags="ng" index="2VaFvH">
        <child id="2769948622284606050" name="statements" index="2VaTZU" />
      </concept>
      <concept id="2769948622284768359" name="jetbrains.mps.build.workflow.structure.BwfAntStatement" flags="ng" index="2Vbh7Z">
        <child id="2769948622284768360" name="element" index="2Vbh7K" />
      </concept>
    </language>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt">
        <property id="6666499814681541920" name="text" index="2pMdty" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <child id="6666499814681415861" name="attributes" index="2pNNFR" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="6666499814681447923" name="jetbrains.mps.core.xml.structure.XmlAttribute" flags="ng" index="2pNUuL">
        <property id="6666499814681447926" name="attrName" index="2pNUuO" />
        <child id="6666499814681541918" name="value" index="2pMdts" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG" />
    </language>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="927724900262033858" name="jetbrains.mps.build.structure.BuildSource_JavaOptions" flags="ng" index="2_Ic$z">
        <property id="927724900262398947" name="heapSize" index="2_GNG2" />
        <property id="927724900262033861" name="generateDebugInfo" index="2_Ic$$" />
        <property id="927724900262033862" name="copyResources" index="2_Ic$B" />
        <property id="6998860900671147996" name="javaLevel" index="TZNOO" />
        <child id="927724900262033863" name="resourceSelectors" index="2_Ic$A" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="4915877860348071612" name="fileName" index="turDy" />
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="3542413272732620719" name="aspects" index="1hWBAP" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="4701820937132281259" name="jetbrains.mps.build.structure.BuildCustomWorkflow" flags="ng" index="1y0Vig">
        <child id="4701820937132281260" name="parts" index="1y0Vin" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904288051100" name="jetbrains.mps.build.structure.BuildFileIncludeSelector" flags="ng" index="3LWZYx">
        <property id="5248329904288051101" name="pattern" index="3LWZYw" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6503355885715333289" name="jetbrains.mps.build.mps.structure.BuildMpsAspect" flags="ng" index="2igEWh">
        <property id="7981469545489178349" name="generationMaxHeapSizeInMb" index="3UIfUI" />
        <property id="353547257300482730" name="generationMaxPermSizeInMb" index="1YnnvL" />
      </concept>
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="4297162197620964123" name="jetbrains.mps.build.mps.structure.BuildMps_GeneratorOptions" flags="ng" index="1wNqPr">
        <property id="4297162197620978188" name="strict" index="1wNuhc" />
        <property id="4297162197620978190" name="parallel" index="1wNuhe" />
        <property id="4297162197620978193" name="parallelThreads" index="1wNuhh" />
        <property id="4297162197621031140" name="inplace" index="1wOHq$" />
        <property id="6535001758416941941" name="createStaticRefs" index="3Ej$Sc" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="5dVoMRiwBOf">
    <property role="2DA0ip" value="../../../../build/languages/com.mbeddr.unless" />
    <property role="TrG5h" value="com.mbeddr.unless" />
    <property role="turDy" value="build.xml" />
    <property role="3GE5qa" value="" />
    <node concept="2igEWh" id="1$BAYQjr6By" role="1hWBAP">
      <property role="3UIfUI" value="2048" />
      <property role="1YnnvL" value="512" />
    </node>
    <node concept="1y0Vig" id="4xHE_J7rSQu" role="1hWBAP">
      <node concept="2VaFvF" id="4xHE_J7rSQv" role="1y0Vin">
        <property role="TrG5h" value="cleanTmp" />
        <node concept="2VaFvH" id="4xHE_J7rSQw" role="2VaFvJ">
          <property role="TrG5h" value="cleanTmp" />
          <node concept="2Vbh7Z" id="4xHE_J7rSQx" role="2VaTZU">
            <node concept="2pNNFK" id="4xHE_J7rSQy" role="2Vbh7K">
              <property role="2pNNFO" value="delete" />
              <node concept="2pNUuL" id="4xHE_J7rSQz" role="2pNNFR">
                <property role="2pNUuO" value="dir" />
                <node concept="2pMdtt" id="4xHE_J7rSQ$" role="2pMdts">
                  <property role="2pMdty" value="${build.tmp}" />
                </node>
              </node>
              <node concept="3o6iSG" id="4xHE_J7rSQ_" role="3o6s8t" />
              <node concept="3o6iSG" id="4xHE_J7rSQA" role="3o6s8t" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="2iaA4fp$QXG" role="3989C9">
      <property role="m$_wk" value="com.mbeddr.unless" />
      <node concept="m$_yC" id="2iaA4fp$R0B" role="m$_yJ">
        <ref role="m$_y1" to="al5i:7uZw0yZ2_Jq" resolve="com.mbeddr.mpsutil" />
      </node>
      <node concept="m$_yC" id="2iaA4fp$R0C" role="m$_yJ">
        <ref role="m$_y1" to="p6ld:7uZw0yZ43Jz" resolve="com.mbeddr.core" />
      </node>
      <node concept="3_J27D" id="2iaA4fp$QXI" role="m$_yQ">
        <node concept="3Mxwew" id="2iaA4fp$QZA" role="3MwsjC">
          <property role="3MwjfP" value="com.mbeddr.unless" />
        </node>
      </node>
      <node concept="3_J27D" id="2iaA4fp$QXK" role="m_cZH">
        <node concept="3Mxwew" id="2iaA4fp$QZE" role="3MwsjC">
          <property role="3MwjfP" value="com.mbeddr.unless" />
        </node>
      </node>
      <node concept="3_J27D" id="2iaA4fp$QXM" role="m$_w8">
        <node concept="3Mxwew" id="2iaA4fp$R01" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="2iaA4fp$R0k" role="m$_yh">
        <ref role="m$f5T" node="1YLj_r8S5f8" resolve="com.mbeddr.unless" />
      </node>
    </node>
    <node concept="2_Ic$z" id="4RmjYKtSlyz" role="3989C9">
      <property role="2_GNG2" value="2048" />
      <property role="TZNOO" value="" />
      <property role="2_Ic$$" value="true" />
    </node>
    <node concept="1wNqPr" id="2B1T7v1qmcz" role="3989C9">
      <property role="1wNuhc" value="true" />
      <property role="1wNuhe" value="true" />
      <property role="1wNuhh" value="4" />
      <property role="1wOHq$" value="true" />
      <property role="3Ej$Sc" value="true" />
    </node>
    <node concept="2G$12M" id="1YLj_r8S5f8" role="3989C9">
      <property role="TrG5h" value="com.mbeddr.unless" />
      <node concept="1E1JtD" id="2iaA4fp$PVX" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="com.mbeddr.unless" />
        <property role="3LESm3" value="4d225407-053a-4f77-9e22-29bf404a46f2" />
        <property role="2GAjPV" value="false" />
        <node concept="398BVA" id="2iaA4fp$PW5" role="3LF7KH">
          <ref role="398BVh" node="2oGHZerK6pP" resolve="code.home" />
          <node concept="2Ry0Ak" id="2iaA4fp$PWf" role="iGT6I">
            <property role="2Ry0Am" value="mps" />
            <node concept="2Ry0Ak" id="2iaA4fp$PWo" role="2Ry0An">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="2iaA4fp$PWx" role="2Ry0An">
                <property role="2Ry0Am" value="com.mbeddr.unless" />
                <node concept="2Ry0Ak" id="2iaA4fp$PWE" role="2Ry0An">
                  <property role="2Ry0Am" value="com.mbeddr.unless.mpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2iaA4fp$PX0" role="3bR37C">
          <node concept="3bR9La" id="2iaA4fp$PX1" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="p6ld:7uZw0yZ43JM" resolve="com.mbeddr.core.statements" />
          </node>
        </node>
        <node concept="1yeLz9" id="2iaA4fp$PX2" role="1TViLv">
          <property role="TrG5h" value="com.mbeddr.unless#2633084349332346790" />
          <property role="3LESm3" value="bb372490-cb1d-40be-85a5-670420d5ce79" />
          <property role="2GAjPV" value="false" />
        </node>
        <node concept="1SiIV0" id="2iaA4fp_Ia$" role="3bR37C">
          <node concept="1Busua" id="2iaA4fp_Ia_" role="1SiIV1">
            <ref role="1Busuk" to="p6ld:7uZw0yZ43JM" resolve="com.mbeddr.core.statements" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="6XXe7bCzKWF" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="6XXe7bCzKWG" role="2JcizS">
        <ref role="398BVh" node="3$3J06WftG_" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="25y4WSoTr_U" role="1l3spa">
      <ref role="1l3spb" to="ffeo:25y4WSoTpRT" resolve="jetpad" />
      <node concept="398BVA" id="6RNQOYRFoYN" role="2JcizS">
        <ref role="398BVh" node="3$3J06WftG_" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="7kchpCrNsdu" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3J16QdQGiiA" resolve="mpsDiagramEditor" />
      <node concept="398BVA" id="7kchpCrNsET" role="2JcizS">
        <ref role="398BVh" node="3$3J06WftG_" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2iaA4fp$Q0T" role="1l3spa">
      <ref role="1l3spb" to="xsd6:5qO$P$PtiTw" resolve="com.mbeddr.allInOne" />
      <node concept="398BVA" id="2iaA4fp$QVg" role="2JcizS">
        <ref role="398BVh" node="6RmoJr9fU4_" resolve="mbeddr.allInOne.artifacts" />
      </node>
    </node>
    <node concept="398rNT" id="3$3J06WftG_" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
    </node>
    <node concept="398rNT" id="6RmoJr9fU4_" role="1l3spd">
      <property role="TrG5h" value="mbeddr.allInOne.artifacts" />
    </node>
    <node concept="398rNT" id="2oGHZerK6pP" role="1l3spd">
      <property role="TrG5h" value="code.home" />
      <node concept="55IIr" id="2oGHZerK6pU" role="398pKh">
        <node concept="2Ry0Ak" id="2oGHZerK6pZ" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="2oGHZerK6q6" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="2oGHZerK6qb" role="2Ry0An">
              <property role="2Ry0Am" value=".." />
              <node concept="2Ry0Ak" id="2oGHZerK6qg" role="2Ry0An">
                <property role="2Ry0Am" value="code" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="5dVoMRiwNak" role="10PD9s" />
    <node concept="3b7kt6" id="5dVoMRiwNat" role="10PD9s" />
    <node concept="55IIr" id="5dVoMRiwBOg" role="auvoZ" />
    <node concept="1l3spV" id="5dVoMRiwBOh" role="1l3spN">
      <node concept="3981dG" id="1YLj_r8S5fx" role="39821P">
        <node concept="3_J27D" id="1YLj_r8S5fy" role="Nbhlr">
          <node concept="3Mxwew" id="1YLj_r8S5fz" role="3MwsjC">
            <property role="3MwjfP" value="com.mbeddr.unless.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="1YLj_r8S5f$" role="39821P">
          <ref role="m_rDy" node="2iaA4fp$QXG" resolve="com.mbeddr.unless" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="7uZw0yZ43Jk">
    <property role="TrG5h" value="com.mbeddr.unless-allScripts.build" />
    <property role="2DA0ip" value="../../../../build/solutions/com.mbeddr.unless.build" />
    <property role="turDy" value="build.xml" />
    <property role="3GE5qa" value="" />
    <node concept="1y0Vig" id="2oGHZerKpFY" role="1hWBAP">
      <node concept="2VaFvF" id="2oGHZerKpFZ" role="1y0Vin">
        <property role="TrG5h" value="cleanTmp" />
        <node concept="2VaFvH" id="2oGHZerKpG0" role="2VaFvJ">
          <property role="TrG5h" value="cleanTmp" />
          <node concept="2Vbh7Z" id="2oGHZerKpG1" role="2VaTZU">
            <node concept="2pNNFK" id="2oGHZerKpG2" role="2Vbh7K">
              <property role="2pNNFO" value="delete" />
              <node concept="2pNUuL" id="2oGHZerKpG3" role="2pNNFR">
                <property role="2pNUuO" value="dir" />
                <node concept="2pMdtt" id="2oGHZerKpG4" role="2pMdts">
                  <property role="2pMdty" value="${build.tmp}" />
                </node>
              </node>
              <node concept="3o6iSG" id="2oGHZerKpG5" role="3o6s8t" />
              <node concept="3o6iSG" id="2oGHZerKpG6" role="3o6s8t" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2_Ic$z" id="2tMMEJ5g6CU" role="3989C9">
      <property role="2_Ic$B" value="true" />
      <property role="TZNOO" value="" />
      <property role="2_Ic$$" value="true" />
      <node concept="3LWZYx" id="2tMMEJ5g9j1" role="2_Ic$A">
        <property role="3LWZYw" value="**/*.info" />
      </node>
    </node>
    <node concept="1wNqPr" id="2B1T7v1mQPD" role="3989C9">
      <property role="1wNuhc" value="true" />
      <property role="1wNuhe" value="true" />
      <property role="1wNuhh" value="4" />
      <property role="1wOHq$" value="true" />
      <property role="3Ej$Sc" value="true" />
    </node>
    <node concept="2G$12M" id="3$3J06Wfv3S" role="3989C9">
      <property role="TrG5h" value="com.mbeddr.unlesss.build" />
      <node concept="1E1JtA" id="2iaA4fp$Sdt" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="com.mbeddr.unlesss.build" />
        <property role="3LESm3" value="cc5adb6e-49d5-4827-a35d-c1c78988d292" />
        <property role="2GAjPV" value="false" />
        <node concept="398BVA" id="2iaA4fp$Sd_" role="3LF7KH">
          <ref role="398BVh" node="2oGHZerK6rJ" resolve="code.home" />
          <node concept="2Ry0Ak" id="2iaA4fp$Sfy" role="iGT6I">
            <property role="2Ry0Am" value="mps" />
            <node concept="2Ry0Ak" id="2iaA4fp$SfF" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="2iaA4fp$SfO" role="2Ry0An">
                <property role="2Ry0Am" value="com.mbeddr.unlesss.build" />
                <node concept="2Ry0Ak" id="2iaA4fp$SfX" role="2Ry0An">
                  <property role="2Ry0Am" value="com.mbeddr.unlesss.build.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2iaA4fp$Sgp" role="3bR37C">
          <node concept="3bR9La" id="2iaA4fp$Sgq" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
          </node>
        </node>
        <node concept="1SiIV0" id="4Rn9djDkmVn" role="3bR37C">
          <node concept="3bR9La" id="4Rn9djDkmVo" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="90a9:2Xjt3l5bx_L" resolve="de.slisson.mps.all.build" />
          </node>
        </node>
        <node concept="1SiIV0" id="4Rn9djDkmVp" role="3bR37C">
          <node concept="3bR9La" id="4Rn9djDkmVq" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="p6ld:5dchr4QjhF_" resolve="com.mbeddr.build" />
          </node>
        </node>
        <node concept="1SiIV0" id="4Rn9djDkmVr" role="3bR37C">
          <node concept="3bR9La" id="4Rn9djDkmVs" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="xsd6:IW6Povi5V3" resolve="com.mbeddr.allInOne" />
          </node>
        </node>
        <node concept="1SiIV0" id="4Rn9djDkmVt" role="3bR37C">
          <node concept="3bR9La" id="4Rn9djDkmVu" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="p6ld:3Ry9rm0zlo1" resolve="com.mbeddr.allScripts" />
          </node>
        </node>
        <node concept="1SiIV0" id="4Rn9djDkmVv" role="3bR37C">
          <node concept="3bR9La" id="4Rn9djDkmVw" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="al5i:7Pr7tifzlku" resolve="com.mbeddr.platform" />
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="7uZw0yZ43Jl" role="10PD9s" />
    <node concept="3b7kt6" id="7uZw0yZ43Jm" role="10PD9s" />
    <node concept="398rNT" id="2iaA4fp$TlC" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
    </node>
    <node concept="398rNT" id="4Rn9djDkmTo" role="1l3spd">
      <property role="TrG5h" value="mbeddr.allInOne.artifacts" />
    </node>
    <node concept="398rNT" id="2oGHZerK6rJ" role="1l3spd">
      <property role="TrG5h" value="code.home" />
      <node concept="55IIr" id="2oGHZerK6rO" role="398pKh">
        <node concept="2Ry0Ak" id="2oGHZerK6rT" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="2oGHZerK6s0" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="2oGHZerK6s5" role="2Ry0An">
              <property role="2Ry0Am" value=".." />
              <node concept="2Ry0Ak" id="2oGHZerK6sa" role="2Ry0An">
                <property role="2Ry0Am" value="code" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="7uZw0yZ43Js" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7uZw0yZ43Jt" role="2JcizS">
        <ref role="398BVh" node="2iaA4fp$TlC" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="4Rn9djDkmSO" role="1l3spa">
      <ref role="1l3spb" to="xsd6:5qO$P$PtiTw" resolve="com.mbeddr.allInOne" />
      <node concept="398BVA" id="4Rn9djDkmUS" role="2JcizS">
        <ref role="398BVh" node="4Rn9djDkmTo" resolve="mbeddr.allInOne.artifacts" />
      </node>
    </node>
    <node concept="1l3spV" id="7uZw0yZ43Ju" role="1l3spN">
      <node concept="L2wRC" id="2oGHZerKNZd" role="39821P">
        <ref role="L2wRA" node="2iaA4fp$Sdt" resolve="com.mbeddr.unlesss.build" />
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="2iaA4fp_I8U">
    <property role="2DA0ip" value="../../../../build/solutions/com.mbeddr.unless.sandbox" />
    <property role="TrG5h" value="com.mbeddr.unless.sandbox" />
    <property role="turDy" value="build.xml" />
    <property role="3GE5qa" value="" />
    <node concept="2igEWh" id="2iaA4fp_I8V" role="1hWBAP">
      <property role="3UIfUI" value="2048" />
      <property role="1YnnvL" value="512" />
    </node>
    <node concept="1y0Vig" id="2oGHZerKpGy" role="1hWBAP">
      <node concept="2VaFvF" id="2oGHZerKpGz" role="1y0Vin">
        <property role="TrG5h" value="cleanTmp" />
        <node concept="2VaFvH" id="2oGHZerKpG$" role="2VaFvJ">
          <property role="TrG5h" value="cleanTmp" />
          <node concept="2Vbh7Z" id="2oGHZerKpG_" role="2VaTZU">
            <node concept="2pNNFK" id="2oGHZerKpGA" role="2Vbh7K">
              <property role="2pNNFO" value="delete" />
              <node concept="2pNUuL" id="2oGHZerKpGB" role="2pNNFR">
                <property role="2pNUuO" value="dir" />
                <node concept="2pMdtt" id="2oGHZerKpGC" role="2pMdts">
                  <property role="2pMdty" value="${build.tmp}" />
                </node>
              </node>
              <node concept="3o6iSG" id="2oGHZerKpGD" role="3o6s8t" />
              <node concept="3o6iSG" id="2oGHZerKpGE" role="3o6s8t" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2_Ic$z" id="2iaA4fp_I96" role="3989C9">
      <property role="2_GNG2" value="2048" />
      <property role="TZNOO" value="" />
      <property role="2_Ic$$" value="true" />
    </node>
    <node concept="1wNqPr" id="2iaA4fp_I97" role="3989C9">
      <property role="1wNuhc" value="true" />
      <property role="1wNuhe" value="true" />
      <property role="1wNuhh" value="4" />
      <property role="1wOHq$" value="true" />
      <property role="3Ej$Sc" value="true" />
    </node>
    <node concept="m$_wf" id="7Vt15sLYmlg" role="3989C9">
      <property role="m$_wk" value="dummy" />
      <node concept="3_J27D" id="7Vt15sLYmli" role="m$_yQ">
        <node concept="3Mxwew" id="7Vt15sLYmvs" role="3MwsjC">
          <property role="3MwjfP" value="dummy" />
        </node>
      </node>
      <node concept="3_J27D" id="7Vt15sLYmlk" role="m_cZH">
        <node concept="3Mxwew" id="7Vt15sLYmvw" role="3MwsjC">
          <property role="3MwjfP" value="dummy" />
        </node>
      </node>
      <node concept="3_J27D" id="7Vt15sLYmlm" role="m$_w8">
        <node concept="3Mxwew" id="7Vt15sLYmzQ" role="3MwsjC">
          <property role="3MwjfP" value="0.1" />
        </node>
      </node>
      <node concept="m$_yC" id="7Vt15sLYmKK" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5CFKsRWRuFN" resolve="jetbrains.mps.debugger.api" />
      </node>
    </node>
    <node concept="2G$12M" id="2iaA4fp_I98" role="3989C9">
      <property role="TrG5h" value="com.mbeddr.core.unless" />
      <node concept="1E1JtA" id="2iaA4fp_Ihz" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="com.mbeddr.unless.sandbox" />
        <property role="3LESm3" value="b7599586-805b-4d7d-b326-a4665b86b3b8" />
        <property role="2GAjPV" value="false" />
        <node concept="398BVA" id="2iaA4fp_Iit" role="3LF7KH">
          <ref role="398BVh" node="2oGHZerK6un" resolve="code.home" />
          <node concept="2Ry0Ak" id="2iaA4fp_IiQ" role="iGT6I">
            <property role="2Ry0Am" value="mps" />
            <node concept="2Ry0Ak" id="2iaA4fp_IiZ" role="2Ry0An">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="2iaA4fp_Ij8" role="2Ry0An">
                <property role="2Ry0Am" value="com.mbeddr.unless.sandbox" />
                <node concept="2Ry0Ak" id="2iaA4fp_Ijh" role="2Ry0An">
                  <property role="2Ry0Am" value="com.mbeddr.unless.sandbox.msd" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="2iaA4fp_I9k" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="2iaA4fp_I9l" role="2JcizS">
        <ref role="398BVh" node="2iaA4fp_I9s" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2iaA4fp_I9m" role="1l3spa">
      <ref role="1l3spb" to="ffeo:25y4WSoTpRT" resolve="jetpad" />
      <node concept="398BVA" id="2iaA4fp_I9n" role="2JcizS">
        <ref role="398BVh" node="2iaA4fp_I9s" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2iaA4fp_I9o" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3J16QdQGiiA" resolve="mpsDiagramEditor" />
      <node concept="398BVA" id="2iaA4fp_I9p" role="2JcizS">
        <ref role="398BVh" node="2iaA4fp_I9s" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2iaA4fp_I9q" role="1l3spa">
      <ref role="1l3spb" to="xsd6:5qO$P$PtiTw" resolve="com.mbeddr.allInOne" />
      <node concept="398BVA" id="2iaA4fp_I9r" role="2JcizS">
        <ref role="398BVh" node="2iaA4fp_I9G" resolve="mbeddr.allInOne.artifacts" />
      </node>
    </node>
    <node concept="2sgV4H" id="2iaA4fp_Id6" role="1l3spa">
      <ref role="1l3spb" node="5dVoMRiwBOf" resolve="com.mbeddr.unless" />
    </node>
    <node concept="398rNT" id="2iaA4fp_I9s" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
    </node>
    <node concept="398rNT" id="2iaA4fp_I9G" role="1l3spd">
      <property role="TrG5h" value="mbeddr.allInOne.artifacts" />
    </node>
    <node concept="398rNT" id="2oGHZerK6un" role="1l3spd">
      <property role="TrG5h" value="code.home" />
      <node concept="55IIr" id="2oGHZerK6uy" role="398pKh">
        <node concept="2Ry0Ak" id="2oGHZerK6uC" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="2oGHZerK6uH" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="2oGHZerK6uM" role="2Ry0An">
              <property role="2Ry0Am" value=".." />
              <node concept="2Ry0Ak" id="2oGHZerK6uR" role="2Ry0An">
                <property role="2Ry0Am" value="code" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2iaA4fp_IeJ" role="1l3spd">
      <property role="TrG5h" value="unless.artifacts" />
    </node>
    <node concept="10PD9b" id="2iaA4fp_I9J" role="10PD9s" />
    <node concept="3b7kt6" id="2iaA4fp_I9K" role="10PD9s" />
    <node concept="55IIr" id="2iaA4fp_I9L" role="auvoZ" />
    <node concept="1l3spV" id="2iaA4fp_I9M" role="1l3spN">
      <node concept="L2wRC" id="2oGHZerKpKD" role="39821P">
        <ref role="L2wRA" node="2iaA4fp_Ihz" resolve="com.mbeddr.unless.sandbox" />
      </node>
    </node>
  </node>
</model>

