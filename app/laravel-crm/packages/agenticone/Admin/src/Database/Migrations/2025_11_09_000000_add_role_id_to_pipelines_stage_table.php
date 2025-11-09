<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
        public function up()
        {
            Schema::table('lead_pipeline_stages', function (Blueprint $table) {
                $table->unsignedInteger('role_id')->nullable()->after('probability');
                $table->foreign('role_id')->references('id')->on('roles')->onDelete('set null');
            });
        }

        public function down()
        {
            Schema::table('lead_pipeline_stages', function (Blueprint $table) {
                $table->dropForeign(['role_id']);
                $table->dropColumn('role_id');
            });
        }

};
