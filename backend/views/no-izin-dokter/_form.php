<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\NoIzinDokter */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="no-izin-dokter-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'no_izin')->textInput(['maxlength' => true]) ?>

    <?php echo $form->field($model, 'keahlian')->dropDownList([
      'Dokter Umum' => 'Dokter Umum',
      'Dokter Gigi' => 'Dokter Gigi',
      'Spesialis Anak' => 'Spesialis Anak',
      'Spesialis Anestesiologi & Terapi Intensif' => 'Spesialis Anestesiologi & Terapi Intensif',
      'Spesialis Andrologi' => 'Spesialis Andrologi',
      'Spesialis Akupuntur Klinik' => 'Spesialis Akupuntur Klinik',
      'Spesialis Bedah' => 'Spesialis Bedah',
      'Spesialis Bedah Anak' => 'Spesialis Bedah Anak',
      'Spesialis Bedah Mulut & Maksilofasial' => 'Spesialis Bedah Mulut & Maksilofasial',
      'Spesialis Bedah Plastik Rekonstruksi & Estetik' => 'Spesialis Bedah Plastik Rekonstruksi & Estetik',
      'Spesialis Bedah Saraf' => 'Spesialis Bedah Saraf',
      'Spesialis Bedah Toraks & Kardiovaskular' => 'Spesialis Bedah Toraks & Kardiovaskular',
      'Spesialis Kedokteran Forensik & Medikolegal' => 'Spesialis Kedokteran Forensik & Medikolegal',
      'Spesialis Farmakologi Klinik' => 'Spesialis Farmakologi Klinik',
      'Spesialis Gizi Klinik' => 'Spesialis Gizi Klinik',
      'Spesialis Jantung dan Pembuluh Darah' => 'Spesialis Jantung dan Pembuluh Darah',
      'Spesialis Kedokteran Fisik & Rehabilitasi' => 'Spesialis Kedokteran Fisik & Rehabilitasi',
      'Spesialis Konservasi Gigi' => 'Spesialis Konservasi Gigi',
      'Spesialis Kedokteran Gigi Anak' => 'Spesialis Kedokteran Gigi Anak',
      'Spesialis Kedokteran Jiwa atau Psikiatri' => 'Spesialis Kedokteran Jiwa atau Psikiatri',
      'Spesialis Kedokteran Penerbangan' => 'Spesialis Kedokteran Penerbangan',
      'Spesialis Penyakit Kulit dan Kelamin' => 'Spesialis Penyakit Kulit dan Kelamin',
      'Spesialis Emergency Medic' => 'Spesialis Emergency Medic',
      'Spesialis Kedokteran Nuklir' => 'Spesialis Kedokteran Nuklir',
      'Spesialis Kedokteran Olahraga' => 'Spesialis Kedokteran Olahraga',
      'Spesialis Layanan Primer' => 'Spesialis Layanan Primer',
      'Spesialis Mata' => 'Spesialis Mata',
      'Spesialis Mikrobiologi Klinik' => 'Spesialis Mikrobiologi Klinik',
      'Spesialis Obstetri & Ginekologi' => 'Spesialis Obstetri & Ginekologi',
      'Spesialis Kedokteran Okupasi (Kerja)' => 'Spesialis Kedokteran Okupasi (Kerja)',
      'Spesialis Onkologi Radiasi' => 'Spesialis Onkologi Radiasi',
      'Spesialis Ortodonsia' => 'Spesialis Ortodonsia',
      'Spesialis Bedah Orthopaedi & Traumatologi' => 'Spesialis Bedah Orthopaedi dan Traumatologi',
      'Spesialis Pulmonologi & Kedokteran Respirasi' => 'Spesialis Pulmonologi & Kedokteran Respirasi',
      'Spesialis Parasitologi Klinik' => 'Spesialis Parasitologi Klinik',
      'Spesialis Periodonsia' => 'Spesialis Periodonsia',
      'Spesialis Patologi Anatomi' => 'Spesialis Patologi Anatomi',
      'Spesialis Penyakit Dalam' => 'Spesialis Penyakit Dalam',
      'Spesialis Patologi Klinik' => 'Spesialis Patologi Klinik',
      'Spesialis Penyakit Mulut' => 'Spesialis Penyakit Mulut',
      'Spesialis Radiologi' => 'Spesialis Radiologi',
      'Spesialis Radiologi Kedokteran Gigi' => 'Spesialis Radiologi Kedokteran Gigi',
      'Spesialis Saraf' => 'Spesialis Saraf',
      'Spesialis Telinga Hidung Tenggorok-Bedah Kepala Leher' => 'Spesialis Telinga Hidung Tenggorok-Bedah Kepala Leher',
      'Spesialis Urologi' => 'Spesialis Urologi'
      ]); ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
