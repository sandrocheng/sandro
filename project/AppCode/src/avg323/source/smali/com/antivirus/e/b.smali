.class public Lcom/antivirus/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/avg/toolkit/e;


# instance fields
.field private a:Lcom/antivirus/e/g;

.field private b:Landroid/os/Handler;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/antivirus/e/b;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/antivirus/e/b;->c:Landroid/content/Context;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad init"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/antivirus/e/b;)Lcom/antivirus/e/g;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/e/b;->a:Lcom/antivirus/e/g;

    return-object v0
.end method

.method static synthetic a(Lcom/antivirus/e/b;Lcom/antivirus/e/g;)Lcom/antivirus/e/g;
    .locals 0

    iput-object p1, p0, Lcom/antivirus/e/b;->a:Lcom/antivirus/e/g;

    return-object p1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/e/b;->a:Lcom/antivirus/e/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/e/b;->a:Lcom/antivirus/e/g;

    invoke-virtual {v0}, Lcom/antivirus/e/g;->a()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/antivirus/e/b;->b(Ljava/io/File;)V

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/antivirus/e/b;->b(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lcom/antivirus/e/b;->b(Ljava/io/File;)V

    return-void
.end method

.method static synthetic b(Lcom/antivirus/e/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/e/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Ljava/io/File;)V
    .locals 4

    new-instance v0, Lcom/antivirus/e/c;

    invoke-direct {v0}, Lcom/antivirus/e/c;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/antivirus/e/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/e/b;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Messenger;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/e/b;->a:Lcom/antivirus/e/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/e/b;->a:Lcom/antivirus/e/g;

    invoke-virtual {v0, p1}, Lcom/antivirus/e/g;->a(Landroid/os/Messenger;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/e/b;->c:Landroid/content/Context;

    const/16 v1, 0xfa0

    const/16 v2, 0x1771

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    const-class v0, Lcom/antivirus/e/i;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x1770

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/e/b;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/e/b;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "__SAC2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/e/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/antivirus/e/d;

    invoke-direct {v1, p0, p1}, Lcom/antivirus/e/d;-><init>(Lcom/antivirus/e/b;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_1
    const-string v0, "__SAH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Lcom/antivirus/e/b;->a(Landroid/os/Messenger;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/e/b;->a()V

    return-void
.end method
