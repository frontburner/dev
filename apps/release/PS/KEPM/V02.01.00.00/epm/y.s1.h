/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Essential Project Manager (EPM)
 * Copyright (c) 2004,2008 PowerSoftware.com
 * Author Craig McKay <craig@frontburner.co.uk>
 *
 * PL/SQL parser lexemes
 *
 * $Id$
 *
 * Who  When       Why
 * CAM  17-May-05    97 : File created.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

#define ALL 256
#define ALTER 257
#define AND 258
#define ANY 259
#define ARRAY 260
#define AS 261
#define ASC 262
#define ASSIGNMENT 263
#define ASSOCIATION 264
#define AT 265
#define ATTRIBUTE 266
#define AUTHID 267
#define AVG 268
#define BEGIN_BLOCK 269
#define BETWEEN 270
#define BINARY_INTEGER 271
#define BODY 272
#define BOOLEAN 273
#define BULK 274
#define BY 275
#define CARAT_EQUAL 276
#define CASE 277
#define CHAR 278
#define CHAR_BASE 279
#define CHECK 280
#define CLOSE 281
#define CLUSTER 282
#define COALESCE 283
#define COLLECT 284
#define COMMENT 285
#define COMMIT 286
#define COMPONENT 287
#define COMPRESS 288
#define CONCATENATE 289
#define CONNECT 290
#define CONSTANT 291
#define CREATE 292
#define CURRENT 293
#define CURRVAL 294
#define CURSOR 295
#define DATE 296
#define DAY 297
#define DECIMAL 298
#define DECLARE 299
#define DEFAULT 300
#define DELETE 301
#define DESC 302
#define DISTINCT 303
#define DIVIDE 304
#define DO 305
#define DROP 306
#define ELSE 307
#define ELSIF 308
#define END_BLOCK 309
#define EQUAL 310
#define EXCEPTION 311
#define EXCLUSIVE 312
#define EXECUTE 313
#define EXISTS 314
#define EXIT 315
#define EXPONENT 316
#define EXTENDS 317
#define EXTRACT 318
#define FALSE 319
#define FETCH 320
#define FLOAT 321
#define FOR 322
#define FORALL 323
#define FROM 324
#define FUNCTION 325
#define GOTO 326
#define GREATER_EQUAL 327
#define GREATER_THAN 328
#define GROUP 329
#define HAVING 330
#define HEAP 331
#define HOST_VAR 332
#define HOUR 333
#define IF 334
#define IMMEDIATE 335
#define IN 336
#define INDEX 337
#define INDICATOR 338
#define INSERT 339
#define INTEGER 340
#define INTERFACE 341
#define INTERSECT 342
#define INTERVAL 343
#define INTO 344
#define IS 345
#define ISOLATION 346
#define ITEM_SEP 347
#define JAVA 348
#define LABEL_BEGIN 349
#define LABEL_END 350
#define LEFT_BRACKET 351
#define LESS_EQUAL 352
#define LESS_GREATER 353
#define LESS_THAN 354
#define LEVEL 355
#define LIKE 356
#define LIMITED 357
#define LOCK 358
#define LONG 359
#define LOOP 360
#define MAX 361
#define MIN 362
#define MINUS 363
#define MINUS_WORD 364
#define MINUTE 365
#define MLSLABEL 366
#define MOD 367
#define MODE 368
#define MONTH 369
#define MULTIPLY 370
#define NATURAL 371
#define NATURALN 372
#define NEW 373
#define NEXTVAL 374
#define NOCOPY 375
#define NOT 376
#define NOT_EQUAL 377
#define NOWAIT 378
#define NULL_WORD 379
#define NULLIF 380
#define NUMBER 381
#define NUMBER_BASE 382
#define OCIROWID 383
#define OF 384
#define ON 385
#define OPAQUE 386
#define OPEN 387
#define OPERATOR 388
#define OPTION 389
#define OR 390
#define ORDER 391
#define ORGANIZATION 392
#define OTHERS 393
#define OUT 394
#define PACKAGE 395
#define PARTITION 396
#define PCTFREE 397
#define PLS_INTEGER 398
#define PLUS 399
#define POSITIVE 400
#define POSITIVEN 401
#define PRAGMA 402
#define PRIOR 403
#define PRIVATE 404
#define PROCEDURE 405
#define PUBLIC 406
#define RAISE 407
#define RANGE 408
#define RANGE_WORD 409
#define RAW 410
#define REAL 411
#define RECORD 412
#define REF 413
#define RELEASE 414
#define REMOTE_ACCESS 415
#define RETURN 416
#define REVERSE 417
#define RIGHT_BRACKET 418
#define ROLLBACK 419
#define ROW 420
#define ROWID 421
#define ROWNUM 422
#define ROWTYPE 423
#define SAVEPOINT 424
#define SECOND 425
#define SELECT 426
#define SEPARATE 427
#define SET 428
#define SHARE 429
#define SMALLINT 430
#define SPACE 431
#define SQL 432
#define SQLCODE 433
#define SQLERRM 434
#define START 435
#define STDDEV 436
#define SUBTYPE 437
#define SUCCESSFUL 438
#define SUM 439
#define SYNONYM 440
#define SYSDATE 441
#define TABLE 442
#define THEN 443
#define TILDE_EQUAL 444
#define TIME 445
#define TIMESTAMP 446
#define TIMEZONE_ABBR 447
#define TIMEZONE_HOUR 448
#define TIMEZONE_MINUTE 449
#define TIMEZONE_REGION 450
#define TO 451
#define TRIGGER 452
#define TRUE 453
#define TYPE 454
#define UID 455
#define UNION 456
#define UNIQUE 457
#define UPDATE 458
#define USE 459
#define USER 460
#define VALIDATE 461
#define VALUES 462
#define VARCHAR 463
#define VARCHAR2 464
#define VARIANCE 465
#define VIEW 466
#define WHEN 467
#define WHENEVER 468
#define WHERE 469
#define WHILE 470
#define WITH 471
#define WORK 472
#define WRITE 473
#define YEAR 474
#define ZONE 475
