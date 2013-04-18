.class public Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "SmsBackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String; = "SmsBackupActivity"

.field private static final b:Ljava/text/SimpleDateFormat; = null

.field private static final c:Ljava/lang/String; = null

.field private static final d:Ljava/lang/String; = null

.field private static final e:Ljava/lang/String; = "sms_backup"

.field private static final f:Ljava/lang/String; = "sms_backup_friend"

.field private static final l:I = 0x1

.field private static final m:I = 0x2


# instance fields
.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:I

.field private n:Lcom/ijinshan/kinghelper/firewall/er;

.field private o:Lcom/ijinshan/kinghelper/firewall/en;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5 hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b:Ljava/text/SimpleDateFormat;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mosecurity/SMSBackup/smsbak.bak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->c:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mosecurity/SMSBackup/smsbakd.bak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->k:I

    .line 522
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->k:I

    return p1
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 502
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 503
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 504
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 506
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 507
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    move v0, v5

    :goto_1
    return v0

    .line 509
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 510
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/en;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/en;-><init>(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->o:Lcom/ijinshan/kinghelper/firewall/en;

    .line 156
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->o:Lcom/ijinshan/kinghelper/firewall/en;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/en;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 157
    return-void
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 518
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/er;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/er;-><init>(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->n:Lcom/ijinshan/kinghelper/firewall/er;

    .line 519
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->n:Lcom/ijinshan/kinghelper/firewall/er;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/er;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 520
    return-void
.end method

.method static synthetic e(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Lcom/ijinshan/kinghelper/firewall/en;
    .locals 1
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->o:Lcom/ijinshan/kinghelper/firewall/en;

    return-object v0
.end method

.method static synthetic f(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Lcom/ijinshan/kinghelper/firewall/er;
    .locals 1
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->n:Lcom/ijinshan/kinghelper/firewall/er;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 105
    :pswitch_0
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/en;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/en;-><init>(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->o:Lcom/ijinshan/kinghelper/firewall/en;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->o:Lcom/ijinshan/kinghelper/firewall/en;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/en;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 108
    :pswitch_1
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/er;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/er;-><init>(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->n:Lcom/ijinshan/kinghelper/firewall/er;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->n:Lcom/ijinshan/kinghelper/firewall/er;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/er;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x7f0800b7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0b018f

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 78
    const v0, 0x7f03001b

    const v1, 0x7f0b0188

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 80
    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->g:Landroid/widget/TextView;

    .line 81
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->g:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-virtual {p0, v8, v2}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->h:Landroid/widget/ProgressBar;

    .line 95
    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->i:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->j:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f0b0190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->g:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-virtual {p0, v8, v2}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b019a

    const v4, 0x104000a

    const/high16 v3, 0x104

    const/4 v2, 0x0

    .line 117
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 118
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 119
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 120
    invoke-virtual {v0, v5}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 121
    const v1, 0x7f0b019b

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 122
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/el;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/el;-><init>(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)V

    invoke-virtual {v0, v4, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 128
    invoke-virtual {v0, v3, v6}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 129
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    move v0, v2

    .line 148
    :goto_0
    return v0

    .line 131
    :cond_0
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 132
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 133
    invoke-virtual {v0, v5}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 134
    const v1, 0x7f0b019c

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 135
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/em;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/em;-><init>(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)V

    invoke-virtual {v0, v4, v1}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 141
    invoke-virtual {v0, v3, v6}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 142
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    move v0, v2

    .line 143
    goto :goto_0

    .line 145
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/keniu/security/main/BaseTitleActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 148
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/keniu/security/main/BaseTitleActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 489
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onStop()V

    .line 490
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->o:Lcom/ijinshan/kinghelper/firewall/en;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->o:Lcom/ijinshan/kinghelper/firewall/en;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/en;->a()V

    .line 492
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->o:Lcom/ijinshan/kinghelper/firewall/en;

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->n:Lcom/ijinshan/kinghelper/firewall/er;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->n:Lcom/ijinshan/kinghelper/firewall/er;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/er;->a()V

    .line 496
    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->n:Lcom/ijinshan/kinghelper/firewall/er;

    .line 498
    :cond_1
    return-void
.end method
