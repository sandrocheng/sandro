.class public Lcom/avast/android/mobilesecurity/Application;
.super Lcom/avast/android/generic/Application;
.source "Application.java"


# static fields
.field private static a:Lcom/avast/android/mobilesecurity/s;

.field private static b:Z

.field private static c:Ljava/lang/String;


# instance fields
.field private d:Lcom/avast/android/mobilesecurity/t;

.field private e:Lcom/avast/android/generic/notification/j;

.field private f:Lcom/avast/android/generic/util/s;

.field private g:Lcom/avast/android/generic/a/a;

.field private h:Lcom/avast/android/mobilesecurity/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avast/android/mobilesecurity/Application;->b:Z

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/avast/android/mobilesecurity/Application;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/avast/android/generic/Application;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    sput-object p0, Lcom/avast/android/mobilesecurity/Application;->c:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public static d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 252
    sput-boolean p0, Lcom/avast/android/mobilesecurity/Application;->b:Z

    .line 253
    return-void
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/avast/android/mobilesecurity/Application;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static l()Z
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lcom/avast/android/mobilesecurity/Application;->b:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    const-string v0, "databaseHelperService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lcom/avast/android/mobilesecurity/Application;->a:Lcom/avast/android/mobilesecurity/s;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/avast/android/mobilesecurity/s;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/Application;->a:Lcom/avast/android/mobilesecurity/s;

    .line 158
    :cond_0
    sget-object v0, Lcom/avast/android/mobilesecurity/Application;->a:Lcom/avast/android/mobilesecurity/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    :goto_0
    monitor-exit p0

    return-object v0

    .line 163
    :cond_1
    :try_start_1
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/avast/android/generic/ag;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/avast/android/generic/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->d:Lcom/avast/android/mobilesecurity/t;

    if-nez v0, :cond_4

    .line 168
    const-class v1, Lcom/avast/android/mobilesecurity/t;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    :try_start_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->d:Lcom/avast/android/mobilesecurity/t;

    if-nez v0, :cond_3

    .line 170
    new-instance v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/avast/android/mobilesecurity/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->d:Lcom/avast/android/mobilesecurity/t;

    .line 172
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->d:Lcom/avast/android/mobilesecurity/t;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 154
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_5
    :try_start_6
    const-class v0, Lcom/avast/android/generic/notification/j;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->e:Lcom/avast/android/generic/notification/j;

    if-nez v0, :cond_6

    .line 179
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/d/a;->b(Landroid/content/Context;)Lcom/avast/android/generic/notification/j;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->e:Lcom/avast/android/generic/notification/j;

    .line 182
    :cond_6
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->e:Lcom/avast/android/generic/notification/j;

    goto :goto_0

    .line 185
    :cond_7
    const-class v0, Lcom/avast/android/generic/util/s;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 186
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->f:Lcom/avast/android/generic/util/s;

    if-nez v0, :cond_8

    .line 187
    new-instance v0, Lcom/avast/android/generic/util/s;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/util/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->f:Lcom/avast/android/generic/util/s;

    .line 190
    :cond_8
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->f:Lcom/avast/android/generic/util/s;

    goto/16 :goto_0

    .line 193
    :cond_9
    const-class v0, Lcom/avast/android/generic/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 194
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->g:Lcom/avast/android/generic/a/a;

    if-nez v0, :cond_a

    .line 195
    new-instance v1, Lcom/avast/android/mobilesecurity/a/a;

    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v2

    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-direct {v1, v2, v0}, Lcom/avast/android/mobilesecurity/a/a;-><init>(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;Lcom/avast/android/mobilesecurity/t;)V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/Application;->g:Lcom/avast/android/generic/a/a;

    .line 200
    :cond_a
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->g:Lcom/avast/android/generic/a/a;

    goto/16 :goto_0

    .line 203
    :cond_b
    const-class v0, Lcom/avast/android/generic/internet/b;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 204
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->h:Lcom/avast/android/mobilesecurity/c/a;

    if-nez v0, :cond_c

    .line 206
    new-instance v0, Lcom/avast/android/mobilesecurity/c/a;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/c/a;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->h:Lcom/avast/android/mobilesecurity/c/a;

    .line 209
    :cond_c
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->h:Lcom/avast/android/mobilesecurity/c/a;

    goto/16 :goto_0

    .line 212
    :cond_d
    invoke-super {p0, p1}, Lcom/avast/android/generic/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    goto/16 :goto_0
.end method

.method public j()V
    .locals 5

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 224
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    new-instance v1, Lcom/avast/android/generic/notification/AvastPendingIntent;

    sget-object v2, Lcom/avast/android/generic/notification/s;->a:Lcom/avast/android/generic/notification/s;

    invoke-direct {v1, v2, v0}, Lcom/avast/android/generic/notification/AvastPendingIntent;-><init>(Lcom/avast/android/generic/notification/s;Landroid/content/Intent;)V

    .line 228
    new-instance v2, Lcom/avast/android/generic/notification/a;

    const-wide/32 v3, 0x7f0b000f

    const v0, 0x7f0c03d2

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/avast/android/generic/notification/a;-><init>(JLjava/lang/CharSequence;)V

    .line 230
    const v0, 0x7f0c01d7

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v3, 0x7f0c01d8

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/avast/android/generic/notification/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/avast/android/generic/notification/AvastPendingIntent;)V

    .line 232
    const-class v0, Lcom/avast/android/generic/notification/j;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    .line 233
    invoke-virtual {v0, v2}, Lcom/avast/android/generic/notification/j;->a(Lcom/avast/android/generic/notification/a;)V

    .line 234
    return-void
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-super {p0}, Lcom/avast/android/generic/Application;->onCreate()V

    .line 74
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "avast-debug"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 81
    :goto_0
    invoke-static {p0}, Lcom/avast/android/generic/util/l;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_a

    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/avast/android/generic/util/m;->a(Z)V

    .line 82
    const-string v0, "avast!"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avast started, debug build: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/avast/android/generic/util/l;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/Application;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/Application;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v0

    new-instance v1, La/a/a/a/a/d;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, La/a/a/a/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, La/a/a/a/a/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/a/a/a;->b(Ljava/lang/String;)La/a/a/a/a/a;

    move-result-object v0

    const-string v1, "http://ta-e.avast.com/eh.srv"

    invoke-virtual {v0, v1}, La/a/a/a/a/a;->a(Ljava/lang/String;)La/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/a/a/a;->a(Landroid/content/Context;)La/a/a/a/a/a;

    .line 100
    :cond_1
    invoke-static {p0}, Lcom/avast/android/generic/g;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/d/a;->b(Landroid/content/Context;)Lcom/avast/android/generic/notification/j;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/Application;->e:Lcom/avast/android/generic/notification/j;

    .line 103
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 104
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/Application;->e:Lcom/avast/android/generic/notification/j;

    invoke-virtual {v1}, Lcom/avast/android/generic/notification/j;->a()V

    .line 105
    const-string v1, "eulaDone"

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/Application;->e:Lcom/avast/android/generic/notification/j;

    invoke-virtual {v1}, Lcom/avast/android/generic/notification/j;->b()V

    .line 109
    :cond_2
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->a(Landroid/content/Context;)Z

    .line 112
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->t()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/avast/android/mobilesecurity/t;->e(J)V

    .line 118
    :cond_3
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->S()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 122
    :cond_4
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ac()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    :cond_5
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ab()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ah()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 128
    :cond_6
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Landroid/content/Context;)V

    .line 131
    :cond_7
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->d(Landroid/content/Context;)V

    .line 132
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/account/AccountReportService;->a(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aK()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 136
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.avast.android.mobilesecurity.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 140
    :cond_8
    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/t;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 145
    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/t;->k(Z)V

    .line 149
    :cond_9
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/receiver/ScreenReceiver;->a(Landroid/content/Context;)V

    .line 150
    return-void

    .line 78
    :catch_0
    move-exception v0

    move v0, v2

    goto/16 :goto_0

    :cond_a
    move v1, v2

    .line 81
    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto/16 :goto_0
.end method
