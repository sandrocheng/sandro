.class public Lcom/avast/android/generic/app/about/r;
.super Ljava/lang/Object;
.source "FeedbackUtils.java"


# direct methods
.method public static a()[B
    .locals 11

    .prologue
    const/16 v10, 0x12

    const/4 v0, 0x0

    .line 66
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 71
    const/16 v3, 0xc

    const/16 v4, -0x1e

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 72
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 83
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 84
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 85
    const/16 v4, 0x8

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 86
    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string v7, "log.txt"

    invoke-direct {v4, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 88
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v7, "logcat -d -v time *:V"

    invoke-virtual {v4, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 89
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 92
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v7

    if-eqz v7, :cond_1

    .line 95
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v10, :cond_0

    .line 98
    const/4 v8, 0x0

    const/16 v9, 0x12

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 99
    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 100
    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/Date;->setYear(I)V

    .line 102
    invoke-virtual {v8, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 105
    invoke-virtual {v8, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v8

    if-eqz v8, :cond_5

    .line 114
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 119
    if-eqz v2, :cond_2

    .line 120
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 121
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 122
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    .line 127
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 128
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 129
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 130
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    .line 135
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 136
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 141
    :cond_4
    :goto_3
    return-object v0

    .line 112
    :cond_5
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    :goto_4
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 119
    if-eqz v2, :cond_6

    .line 120
    :try_start_b
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 121
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 122
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 127
    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    .line 128
    :try_start_c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 129
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 130
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 135
    :cond_7
    :goto_6
    if-eqz v4, :cond_4

    .line 136
    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_3

    .line 138
    :catch_1
    move-exception v1

    goto :goto_3

    .line 118
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    .line 119
    :goto_7
    if-eqz v2, :cond_8

    .line 120
    :try_start_e
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 121
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 122
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 127
    :cond_8
    :goto_8
    if-eqz v3, :cond_9

    .line 128
    :try_start_f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 129
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 130
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 135
    :cond_9
    :goto_9
    if-eqz v4, :cond_a

    .line 136
    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    .line 139
    :cond_a
    :goto_a
    throw v0

    .line 138
    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_a

    .line 132
    :catch_4
    move-exception v1

    goto :goto_9

    .line 124
    :catch_5
    move-exception v1

    goto :goto_8

    .line 118
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 132
    :catch_6
    move-exception v1

    goto :goto_6

    .line 124
    :catch_7
    move-exception v1

    goto :goto_5

    .line 115
    :catch_8
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto :goto_4

    :catch_9
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    goto :goto_4

    :catch_a
    move-exception v1

    move-object v4, v0

    goto :goto_4

    .line 132
    :catch_b
    move-exception v1

    goto/16 :goto_2

    .line 124
    :catch_c
    move-exception v1

    goto/16 :goto_1

    .line 108
    :catch_d
    move-exception v7

    goto/16 :goto_0
.end method

.method public static b()[B
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 158
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11

    .line 159
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12

    .line 160
    const/16 v1, 0x8

    :try_start_2
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 161
    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v4, "dumpsys.txt"

    invoke-direct {v1, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 163
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v4, "dumpsys"

    invoke-virtual {v1, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 164
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13

    .line 167
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 175
    if-eqz v2, :cond_0

    .line 176
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 177
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10

    .line 182
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 183
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_1
    move-object v5, v3

    move-object v3, v4

    move-object v4, v2

    .line 190
    :goto_3
    :try_start_7
    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v2, "anr_traces.txt"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v4, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 192
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/anr/traces.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 195
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    .line 198
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 203
    :catch_1
    move-exception v1

    .line 204
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 207
    if-eqz v4, :cond_2

    .line 208
    :try_start_a
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 209
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 210
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    .line 215
    :cond_2
    :goto_6
    if-eqz v5, :cond_3

    .line 216
    :try_start_b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 217
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 218
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 223
    :cond_3
    :goto_7
    if-eqz v2, :cond_4

    .line 224
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 229
    :cond_4
    :goto_8
    return-object v0

    .line 170
    :cond_5
    :try_start_d
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 175
    if-eqz v2, :cond_6

    .line 176
    :try_start_e
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 177
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_14

    .line 182
    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    .line 183
    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    :cond_7
    move-object v5, v3

    move-object v3, v4

    move-object v4, v2

    .line 186
    goto/16 :goto_3

    .line 185
    :catch_2
    move-exception v1

    move-object v5, v3

    move-object v3, v4

    move-object v4, v2

    .line 187
    goto/16 :goto_3

    .line 185
    :catch_3
    move-exception v1

    move-object v5, v3

    move-object v3, v4

    move-object v4, v2

    .line 187
    goto/16 :goto_3

    .line 174
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    .line 175
    :goto_a
    if-eqz v2, :cond_8

    .line 176
    :try_start_10
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 177
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 182
    :cond_8
    :goto_b
    if-eqz v4, :cond_9

    .line 183
    :try_start_11
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 186
    :cond_9
    :goto_c
    throw v0

    .line 201
    :cond_a
    :try_start_12
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    move-object v3, v2

    .line 207
    :cond_b
    if-eqz v4, :cond_c

    .line 208
    :try_start_13
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 209
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 210
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    .line 215
    :cond_c
    :goto_d
    if-eqz v5, :cond_d

    .line 216
    :try_start_14
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 217
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 218
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 223
    :cond_d
    :goto_e
    if-eqz v3, :cond_4

    .line 224
    :try_start_15
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4

    goto :goto_8

    .line 226
    :catch_4
    move-exception v1

    goto :goto_8

    .line 206
    :catchall_1
    move-exception v0

    .line 207
    :goto_f
    if-eqz v4, :cond_e

    .line 208
    :try_start_16
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 209
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 210
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    .line 215
    :cond_e
    :goto_10
    if-eqz v5, :cond_f

    .line 216
    :try_start_17
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 217
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 218
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8

    .line 223
    :cond_f
    :goto_11
    if-eqz v3, :cond_10

    .line 224
    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_7

    .line 227
    :cond_10
    :goto_12
    throw v0

    .line 185
    :catch_5
    move-exception v1

    goto :goto_c

    .line 226
    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_12

    .line 220
    :catch_8
    move-exception v1

    goto :goto_11

    .line 212
    :catch_9
    move-exception v1

    goto :goto_10

    .line 206
    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_f

    .line 220
    :catch_a
    move-exception v1

    goto/16 :goto_7

    .line 212
    :catch_b
    move-exception v1

    goto/16 :goto_6

    .line 203
    :catch_c
    move-exception v1

    move-object v2, v3

    goto/16 :goto_5

    .line 220
    :catch_d
    move-exception v1

    goto :goto_e

    .line 212
    :catch_e
    move-exception v1

    goto :goto_d

    .line 179
    :catch_f
    move-exception v1

    goto :goto_b

    .line 174
    :catchall_4
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_a

    .line 179
    :catch_10
    move-exception v1

    goto/16 :goto_2

    .line 171
    :catch_11
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_1

    :catch_12
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    goto/16 :goto_1

    :catch_13
    move-exception v1

    move-object v4, v0

    goto/16 :goto_1

    .line 179
    :catch_14
    move-exception v1

    goto/16 :goto_9
.end method
