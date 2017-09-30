<?php
use mdm\admin\components\MenuHelper;
use yii\bootstrap\Nav;

?>
<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="left-pull">
                <img src="http://localhost/hhis/backend/web/dist/img/logo.png" alt="User Image" width="200px" height="80px"/>
            </div>
        </div>

        <?= Nav::widget([
            'items' => MenuHelper::getAssignedMenu(Yii::$app->user->id)]);
        ?>

    </section>

</aside>
