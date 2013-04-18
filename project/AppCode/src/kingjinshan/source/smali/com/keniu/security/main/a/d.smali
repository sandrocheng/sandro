.class public final Lcom/keniu/security/main/a/d;
.super Ljava/lang/Object;
.source "BatteryDoctorCheckModule.java"

# interfaces
.implements Lcom/keniu/security/main/a/m;


# static fields
.field public static final a:Ljava/lang/String; = "com.ijinshan.kbatterydoctor"

.field public static final b:Ljava/lang/String;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mosecurity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BatteryDoctor.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/main/a/d;->b:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "\u7535\u6c60\u4fdd\u517b"

    iput-object v0, p0, Lcom/keniu/security/main/a/d;->c:Ljava/lang/String;

    .line 28
    const-string v0, "\u7acb\u5373\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/d;->d:Ljava/lang/String;

    .line 29
    const-string v0, "\u5df2\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/d;->e:Ljava/lang/String;

    .line 30
    const-string v0, "\u5df2\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/d;->f:Ljava/lang/String;

    .line 31
    const-string v0, "\u662f\u5426\u5f00\u542f\u7535\u6c60\u4fdd\u517b"

    iput-object v0, p0, Lcom/keniu/security/main/a/d;->g:Ljava/lang/String;

    .line 32
    sget v0, Lcom/keniu/security/main/a/k;->d:I

    iput v0, p0, Lcom/keniu/security/main/a/d;->h:I

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/main/a/d;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/keniu/security/main/a/d;->h(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 21
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/main/a/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private d(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-static {p1}, Lcom/keniu/security/main/a/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "\u7535\u6c60\u4fdd\u517b"

    iput-object v0, p0, Lcom/keniu/security/main/a/d;->c:Ljava/lang/String;

    .line 97
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 99
    :cond_0
    const-string v0, "\u672a\u5f00\u542f\u7535\u6c60\u4fdd\u517b"

    iput-object v0, p0, Lcom/keniu/security/main/a/d;->c:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 141
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 142
    const v1, 0x7f0b027a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 143
    const v1, 0x7f0b030d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 145
    const v1, 0x7f0b0310

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 147
    const v1, 0x7f0b030f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/main/a/e;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/main/a/e;-><init>(Lcom/keniu/security/main/a/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 160
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 161
    return-void
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 166
    const-string v1, "com.ijinshan.kbatterydoctor"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    .line 171
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v2

    .line 173
    goto :goto_0
.end method

.method private static g(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 177
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/main/a/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void
.end method

.method private h(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 184
    invoke-static {p1}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 186
    const v1, 0x7f0b0219

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 187
    const v1, 0x7f0b0837

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 189
    const v1, 0x7f0b0432

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/main/a/f;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/main/a/f;-><init>(Lcom/keniu/security/main/a/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 199
    const v1, 0x7f0b042e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 201
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-static {p1}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/Context;)Lcom/keniu/security/main/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/main/a;->c()V

    goto :goto_0
.end method

.method private static j()Z
    .locals 2

    .prologue
    .line 209
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/keniu/security/main/a/d;->h:I

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    sget v0, Lcom/keniu/security/main/a/k;->k:I

    if-ne p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/keniu/security/main/a/d;->c:Ljava/lang/String;

    .line 91
    :goto_0
    return-object v0

    .line 82
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->l:I

    if-ne p1, v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/keniu/security/main/a/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_1
    sget v0, Lcom/keniu/security/main/a/k;->m:I

    if-ne p1, v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/keniu/security/main/a/d;->e:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_2
    sget v0, Lcom/keniu/security/main/a/k;->n:I

    if-ne p1, v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/keniu/security/main/a/d;->f:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_3
    sget v0, Lcom/keniu/security/main/a/k;->o:I

    if-ne p1, v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/keniu/security/main/a/d;->g:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 119
    invoke-static {p1}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/Context;)Lcom/keniu/security/main/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/main/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0, p1}, Lcom/keniu/security/main/a/d;->h(Landroid/content/Context;)V

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b027a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b030d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b0310

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b030f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/main/a/e;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/main/a/e;-><init>(Lcom/keniu/security/main/a/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/main/a/l;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->a(Lcom/keniu/security/main/a/m;)I

    .line 107
    invoke-static {p2}, Lcom/keniu/security/main/a/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "\u5df2\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/d;->f:Ljava/lang/String;

    .line 109
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/d;->i:I

    .line 114
    :goto_0
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->b(Lcom/keniu/security/main/a/m;)I

    .line 115
    return-void

    .line 111
    :cond_0
    const-string v0, "\u7acb\u5373\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/d;->f:Ljava/lang/String;

    .line 112
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/d;->i:I

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 230
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/keniu/security/main/a/d;->i:I

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-static {p1}, Lcom/keniu/security/main/a/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "\u5df2\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/d;->f:Ljava/lang/String;

    .line 130
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/d;->i:I

    .line 138
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p1}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/Context;)Lcom/keniu/security/main/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/main/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "\u6b63\u5728\u4e0b\u8f7d"

    iput-object v0, p0, Lcom/keniu/security/main/a/d;->d:Ljava/lang/String;

    .line 133
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/d;->i:I

    goto :goto_0

    .line 135
    :cond_1
    const-string v0, "\u7acb\u5373\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/d;->d:Ljava/lang/String;

    .line 136
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/d;->i:I

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/keniu/security/main/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x50

    return v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/keniu/security/main/a/d;->i:I

    sget v1, Lcom/keniu/security/main/a/k;->h:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/keniu/security/main/a/d;->i:I

    sget v1, Lcom/keniu/security/main/a/k;->g:I

    if-ne v0, v1, :cond_1

    .line 73
    :cond_0
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method
