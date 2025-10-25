<?php

namespace agenticone\DataGrid\Enums;

use agenticone\DataGrid\ColumnTypes\Aggregate;
use agenticone\DataGrid\ColumnTypes\Boolean;
use agenticone\DataGrid\ColumnTypes\Date;
use agenticone\DataGrid\ColumnTypes\Datetime;
use agenticone\DataGrid\ColumnTypes\Decimal;
use agenticone\DataGrid\ColumnTypes\Integer;
use agenticone\DataGrid\ColumnTypes\Text;
use agenticone\DataGrid\Exceptions\InvalidColumnTypeException;

enum ColumnTypeEnum: string
{
    /**
     * String.
     */
    case STRING = 'string';

    /**
     * Integer.
     */
    case INTEGER = 'integer';

    /**
     * Float.
     */
    case FLOAT = 'float';

    /**
     * Boolean.
     */
    case BOOLEAN = 'boolean';

    /**
     * Date.
     */
    case DATE = 'date';

    /**
     * Date time.
     */
    case DATETIME = 'datetime';

    /**
     * Aggregate.
     */
    case AGGREGATE = 'aggregate';

    /**
     * Get the corresponding class name for the column type.
     */
    public static function getClassName(string $type): string
    {
        return match ($type) {
            self::STRING->value    => Text::class,
            self::INTEGER->value   => Integer::class,
            self::FLOAT->value     => Decimal::class,
            self::BOOLEAN->value   => Boolean::class,
            self::DATE->value      => Date::class,
            self::DATETIME->value  => Datetime::class,
            self::AGGREGATE->value => Aggregate::class,
            default                => throw new InvalidColumnTypeException("Invalid column type: {$type}"),
        };
    }
}
