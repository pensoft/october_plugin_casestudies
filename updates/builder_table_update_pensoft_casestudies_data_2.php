<?php namespace Pensoft\Casestudies\Updates;

use Illuminate\Database\Schema\Blueprint;
use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdatePensoftCasestudiesData2 extends Migration
{
    public function up(): void
    {
        Schema::table('pensoft_casestudies_data', function(Blueprint $table)
        {
            $table->string('slug')->default('title');
        });
    }

    public function down(): void
    {
        Schema::table('pensoft_casestudies_data', function(Blueprint $table)
        {
            $table->dropColumn('slug');
        });
    }
}
