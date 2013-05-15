.class final Lcom/avast/android/mobilesecurity/app/firewall/core/c;
.super Ljava/lang/Thread;
.source "Api.java"


# instance fields
.field public a:I

.field private final b:Ljava/io/File;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/StringBuilder;

.field private final e:Z

.field private f:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1073
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1062
    const/4 v0, -0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->a:I

    .line 1074
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->b:Ljava/io/File;

    .line 1075
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->c:Ljava/lang/String;

    .line 1076
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->d:Ljava/lang/StringBuilder;

    .line 1077
    iput-boolean p4, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->e:Z

    .line 1078
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 1188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->f:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->f:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->f:Ljava/lang/Process;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1194
    monitor-exit p0

    return-void

    .line 1188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1190
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1083
    :try_start_0
    const-string v0, "Firewall running script runner"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 1085
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1086
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1093
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->b:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/bin/sh"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1096
    const-string v3, "#!/system/bin/sh\n"

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1098
    :cond_0
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1099
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->c:Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1100
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1101
    :cond_1
    const-string v3, "exit\n"

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1105
    const/4 v3, 0x1

    :try_start_3
    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 1109
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 755 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 1111
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->e:Z

    if-eqz v1, :cond_5

    .line 1113
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "su -c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->f:Ljava/lang/Process;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1124
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->f:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v1

    .line 1125
    :try_start_5
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->f:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1126
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 1129
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->f:Ljava/lang/Process;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1130
    if-nez v3, :cond_7

    .line 1164
    :cond_3
    const/4 v0, 0x2

    :try_start_6
    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1179
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->destroy()V

    .line 1181
    :goto_2
    return-void

    .line 1105
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    const/4 v2, 0x1

    :try_start_7
    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 1106
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    :try_start_8
    const-string v1, "FW interrupted ex"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->d:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    .line 1172
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->d:Ljava/lang/StringBuilder;

    const-string v1, "\nOperation timed-out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1179
    :cond_4
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->destroy()V

    goto :goto_2

    .line 1116
    :cond_5
    :try_start_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sh "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->f:Ljava/lang/Process;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_0

    .line 1173
    :catch_1
    move-exception v0

    .line 1174
    :try_start_a
    const-string v1, "FW exception script run"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1176
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->d:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    .line 1177
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->d:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1179
    :cond_6
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->destroy()V

    goto :goto_2

    .line 1135
    :cond_7
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v3

    iput v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->a:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_b .. :try_end_b} :catch_2

    .line 1140
    :goto_4
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_9

    .line 1141
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 1142
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->d:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_8

    .line 1143
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->d:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    :cond_8
    if-gtz v3, :cond_2

    .line 1148
    :cond_9
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_b

    .line 1149
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 1150
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->d:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_a

    .line 1151
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->d:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    :cond_a
    if-gtz v3, :cond_2

    .line 1155
    :cond_b
    iget v3, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->a:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1160
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_1

    .line 1164
    :catchall_1
    move-exception v0

    :goto_5
    const/4 v3, 0x2

    :try_start_d
    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 1166
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 1179
    :catchall_2
    move-exception v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/core/c;->destroy()V

    throw v0

    .line 1164
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 1136
    :catch_2
    move-exception v3

    goto :goto_4

    .line 1105
    :catchall_4
    move-exception v0

    goto/16 :goto_3
.end method
