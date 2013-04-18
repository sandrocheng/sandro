.class final Lcom/keniu/security/i/f;
.super Ljava/lang/Thread;
.source "FileDownWatcher.java"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final h:I = 0x388

.field private static final i:Ljava/lang/String; = ".android_secure|.thinkfree|sdcard|dcim|lost.dir|movie|music|photo|wallpaper|data|android|ringtones|mosecurity|tencent|sina|miliao|ttpod|snda|qieke|tigermap|sogou|brut.googlemaps|BaiduMap"

.field private static final j:Ljava/lang/String; = "download|update|apk|apps"


# instance fields
.field final synthetic d:Lcom/keniu/security/i/c;

.field private e:Landroid/os/Handler;

.field private f:Landroid/os/Looper;

.field private g:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/keniu/security/i/c;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/keniu/security/i/f;->d:Lcom/keniu/security/i/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/i/f;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/keniu/security/i/f;->d()V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/i/f;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/sdcard/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/keniu/security/i/f;->c(Ljava/lang/String;)Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v3, v2}, Lcom/keniu/security/i/f;->a(Ljava/io/File;ZZ)V

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/i/e;

    invoke-virtual {v0}, Lcom/keniu/security/i/e;->startWatching()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v3, v3}, Lcom/keniu/security/i/f;->a(Ljava/io/File;ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/io/File;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_6

    move v1, v5

    move v2, p3

    .line 149
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_5

    .line 151
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 153
    if-eqz p2, :cond_3

    .line 156
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 157
    const-string v4, ".android_secure|.thinkfree|sdcard|dcim|lost.dir|movie|music|photo|wallpaper|data|android|ringtones|mosecurity|tencent|sina|miliao|ttpod|snda|qieke|tigermap|sogou|brut.googlemaps|BaiduMap"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 159
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/keniu/security/i/f;->c(Ljava/lang/String;)Z

    .line 163
    aget-object v3, v0, v1

    invoke-direct {p0, v3, v5, v6}, Lcom/keniu/security/i/f;->a(Ljava/io/File;ZZ)V

    .line 149
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 167
    :cond_3
    aget-object v3, v0, v1

    invoke-direct {p0, v3, v5, v5}, Lcom/keniu/security/i/f;->a(Ljava/io/File;ZZ)V

    goto :goto_2

    .line 170
    :cond_4
    if-nez v2, :cond_2

    .line 172
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/keniu/security/i/f;->c(Ljava/lang/String;)Z

    move v2, v6

    .line 176
    goto :goto_2

    :cond_5
    move v0, v2

    .line 182
    :goto_3
    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 184
    const-string v0, "download|update|apk|apps"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keniu/security/i/f;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_6
    move v0, p3

    goto :goto_3
.end method

.method static synthetic b(Lcom/keniu/security/i/f;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/keniu/security/i/f;->c()V

    return-void
.end method

.method static synthetic b(Lcom/keniu/security/i/f;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/i/e;

    iget-object v3, v0, Lcom/keniu/security/i/e;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v1, :cond_1

    iget-object v4, v0, Lcom/keniu/security/i/e;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eq v3, v1, :cond_0

    iget-object v3, v0, Lcom/keniu/security/i/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/keniu/security/i/e;->stopWatching()V

    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 214
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    .line 218
    const-string v0, "/sdcard/"

    invoke-direct {p0, v0}, Lcom/keniu/security/i/f;->c(Ljava/lang/String;)Z

    .line 219
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v2}, Lcom/keniu/security/i/f;->a(Ljava/io/File;ZZ)V

    .line 221
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/i/e;

    .line 224
    invoke-virtual {v0}, Lcom/keniu/security/i/e;->startWatching()V

    .line 221
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/keniu/security/i/f;)V
    .locals 4
    .parameter

    .prologue
    .line 91
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/keniu/security/i/h;

    invoke-direct {v1, p0}, Lcom/keniu/security/i/h;-><init>(Lcom/keniu/security/i/f;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    iget-object v0, p0, Lcom/keniu/security/i/f;->d:Lcom/keniu/security/i/c;

    iget-object v0, v0, Lcom/keniu/security/i/c;->e:Lcom/keniu/security/i/t;

    iget-object v1, p0, Lcom/keniu/security/i/f;->d:Lcom/keniu/security/i/c;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/i/t;->a(Ljava/lang/Object;ILjava/lang/String;)I

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 194
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/i/e;

    .line 197
    iget-object v0, v0, Lcom/keniu/security/i/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 209
    :goto_1
    return v0

    .line 194
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    move v0, v2

    .line 205
    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    new-instance v1, Lcom/keniu/security/i/e;

    iget-object v2, p0, Lcom/keniu/security/i/f;->d:Lcom/keniu/security/i/c;

    invoke-direct {v1, v2, p1}, Lcom/keniu/security/i/e;-><init>(Lcom/keniu/security/i/c;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 233
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/i/e;

    invoke-virtual {v0}, Lcom/keniu/security/i/e;->stopWatching()V

    .line 233
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 238
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    .line 240
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 280
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    :cond_0
    return-void

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/sdcard/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-direct {p0, p1}, Lcom/keniu/security/i/f;->c(Ljava/lang/String;)Z

    .line 292
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v3, v2}, Lcom/keniu/security/i/f;->a(Ljava/io/File;ZZ)V

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 300
    :goto_1
    if-ge v1, v2, :cond_0

    .line 302
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/i/e;

    .line 303
    invoke-virtual {v0}, Lcom/keniu/security/i/e;->startWatching()V

    .line 300
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 296
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v3, v3}, Lcom/keniu/security/i/f;->a(Ljava/io/File;ZZ)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 245
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    new-instance v1, Lcom/keniu/security/i/h;

    invoke-direct {v1, p0}, Lcom/keniu/security/i/h;-><init>(Lcom/keniu/security/i/f;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 275
    iget-object v0, p0, Lcom/keniu/security/i/f;->d:Lcom/keniu/security/i/c;

    iget-object v0, v0, Lcom/keniu/security/i/c;->e:Lcom/keniu/security/i/t;

    iget-object v1, p0, Lcom/keniu/security/i/f;->d:Lcom/keniu/security/i/c;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/i/t;->a(Ljava/lang/Object;ILjava/lang/String;)I

    .line 276
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 310
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/i/e;

    .line 314
    iget-object v3, v0, Lcom/keniu/security/i/e;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 315
    if-lt v3, v1, :cond_1

    .line 317
    iget-object v4, v0, Lcom/keniu/security/i/e;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    if-eq v3, v1, :cond_0

    iget-object v3, v0, Lcom/keniu/security/i/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    .line 323
    :cond_0
    invoke-virtual {v0}, Lcom/keniu/security/i/e;->stopWatching()V

    .line 324
    iget-object v0, p0, Lcom/keniu/security/i/f;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 310
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 329
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/keniu/security/i/f;->e:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/i/f;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/keniu/security/i/f;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/i/f;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/keniu/security/i/f;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/i/f;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/keniu/security/i/f;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/keniu/security/i/f;->f:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/keniu/security/i/f;->f:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 373
    :try_start_0
    invoke-virtual {p0}, Lcom/keniu/security/i/f;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Lcom/keniu/security/i/f;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/i/f;->e:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/keniu/security/i/f;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 107
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/i/f;->f:Landroid/os/Looper;

    .line 109
    new-instance v0, Lcom/keniu/security/i/g;

    invoke-direct {v0, p0}, Lcom/keniu/security/i/g;-><init>(Lcom/keniu/security/i/f;)V

    iput-object v0, p0, Lcom/keniu/security/i/f;->e:Landroid/os/Handler;

    .line 130
    invoke-direct {p0}, Lcom/keniu/security/i/f;->c()V

    .line 131
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 132
    invoke-direct {p0}, Lcom/keniu/security/i/f;->d()V

    .line 133
    return-void
.end method
