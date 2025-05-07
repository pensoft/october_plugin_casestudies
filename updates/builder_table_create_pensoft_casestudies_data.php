<?php namespace Pensoft\Casestudies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreatePensoftCasestudiesData extends Migration
{
    public function up()
    {
        Schema::create('pensoft_casestudies_data', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
            $table->timestamp('deleted_at')->nullable();
            $table->string('title')->nullable();
            $table->integer('sort_ord')->nullable()->default(1);
            $table->text('description');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('pensoft_casestudies_data');
    }
}
