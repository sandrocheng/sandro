.class public final Lcom/keniu/security/main/a/a;
.super Ljava/lang/Object;
.source "AutoBootManageCheckMoudle.java"

# interfaces
.implements Lcom/keniu/security/main/a/m;


# static fields
.field public static a:Z = false

.field private static final n:Ljava/lang/String; = "ap.jar"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field private i:Landroid/content/pm/PackageManager;

.field private j:Ljava/util/List;

.field private k:I

.field private final l:I

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/main/a/a;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "\u5f00\u673a\u542f\u52a8\u9879\u9700\u8981\u4f18\u5316"

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->b:Ljava/lang/String;

    .line 33
    const-string v0, "\u7acb\u5373\u4f18\u5316"

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->c:Ljava/lang/String;

    .line 34
    const-string v0, "\u5df2\u4f18\u5316"

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->d:Ljava/lang/String;

    .line 35
    const-string v0, "\u5df2\u4f18\u5316"

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->e:Ljava/lang/String;

    .line 36
    const-string v0, "\u5f00\u673a\u542f\u52a8\u9879\u4f18\u5316"

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->f:Ljava/lang/String;

    .line 38
    sget v0, Lcom/keniu/security/main/a/k;->c:I

    iput v0, p0, Lcom/keniu/security/main/a/a;->g:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->j:Ljava/util/List;

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/keniu/security/main/a/a;->l:I

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/main/a/a;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/keniu/security/main/a/a;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/bootmanager/b/a;)Z
    .locals 3
    .parameter

    .prologue
    .line 28
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/b/a;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/malware/bz;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/ijinshan/bootmanager/b/a;)Z
    .locals 3
    .parameter

    .prologue
    .line 256
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/b/a;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/malware/bz;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 265
    return v0
.end method

.method private c(Landroid/content/Context;)I
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->i:Landroid/content/pm/PackageManager;

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 199
    iget-object v1, p0, Lcom/keniu/security/main/a/a;->i:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 201
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 204
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 205
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eq v5, v8, :cond_0

    .line 206
    new-instance v5, Lcom/ijinshan/bootmanager/b/a;

    invoke-direct {v5}, Lcom/ijinshan/bootmanager/b/a;-><init>()V

    .line 207
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/lang/String;)V

    .line 208
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v6, :cond_1

    .line 209
    iget-object v6, p0, Lcom/keniu/security/main/a/a;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V

    .line 213
    :goto_1
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v6, :cond_2

    .line 214
    iget-object v6, p0, Lcom/keniu/security/main/a/a;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :goto_2
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    .line 220
    const v6, 0x7f0b0566

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    .line 226
    :goto_3
    invoke-virtual {v5, v8}, Lcom/ijinshan/bootmanager/b/a;->a(Z)V

    .line 227
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 228
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_1
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080093

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 223
    :cond_3
    const v6, 0x7f0b0567

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 230
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 231
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 237
    :cond_5
    new-instance v4, Lcom/ijinshan/bootmanager/c/a;

    invoke-direct {v4, p1}, Lcom/ijinshan/bootmanager/c/a;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/bootmanager/b/a;

    .line 240
    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.ijinshan.mguard"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.ijinshan.mPrivacy"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.ijinshan.kbatterydoctor"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.ijinshan.duba"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 244
    invoke-virtual {v4, v0}, Lcom/ijinshan/bootmanager/c/a;->a(Lcom/ijinshan/bootmanager/b/a;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 246
    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/util/List;)V

    .line 248
    iget-object v1, p0, Lcom/keniu/security/main/a/a;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 250
    :cond_7
    invoke-virtual {v4}, Lcom/ijinshan/bootmanager/c/a;->a()V

    .line 251
    iget-object v0, p0, Lcom/keniu/security/main/a/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 252
    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/keniu/security/main/a/a;->g:I

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    sget v0, Lcom/keniu/security/main/a/k;->k:I

    if-ne p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/keniu/security/main/a/a;->b:Ljava/lang/String;

    .line 71
    :goto_0
    return-object v0

    .line 62
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->l:I

    if-ne p1, v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/keniu/security/main/a/a;->c:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_1
    sget v0, Lcom/keniu/security/main/a/k;->m:I

    if-ne p1, v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/keniu/security/main/a/a;->d:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_2
    sget v0, Lcom/keniu/security/main/a/k;->n:I

    if-ne p1, v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/keniu/security/main/a/a;->e:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_3
    sget v0, Lcom/keniu/security/main/a/k;->o:I

    if-ne p1, v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/keniu/security/main/a/a;->f:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/keniu/security/main/a/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ap.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->m:Ljava/lang/String;

    .line 118
    :cond_0
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/keniu/security/main/a/a;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/f/ab;->a(Ljava/io/File;Landroid/content/Context;)Z

    .line 122
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    .line 124
    sput-boolean v2, Lcom/keniu/security/main/MainActivity;->c:Z

    .line 125
    sput-boolean v2, Lcom/keniu/security/main/a/a;->a:Z

    .line 148
    :goto_0
    return-void

    .line 128
    :cond_1
    new-instance v0, Lcom/keniu/security/main/a/b;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/a/b;-><init>(Lcom/keniu/security/main/a/a;)V

    invoke-virtual {v0}, Lcom/keniu/security/main/a/b;->start()V

    .line 136
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/a;->h:I

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5173\u95ed\u5f00\u673a\u542f\u52a8\u9879"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/main/a/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->b:Ljava/lang/String;

    .line 138
    const-string v0, "\u5df2\u4f18\u5316"

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->e:Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    const-class v1, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/main/a/l;Landroid/content/Context;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 81
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->a(Lcom/keniu/security/main/a/m;)I

    .line 82
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->i:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/keniu/security/main/a/a;->i:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eq v5, v8, :cond_0

    new-instance v5, Lcom/ijinshan/bootmanager/b/a;

    invoke-direct {v5}, Lcom/ijinshan/bootmanager/b/a;-><init>()V

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/lang/String;)V

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/keniu/security/main/a/a;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V

    :goto_1
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/keniu/security/main/a/a;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    const v6, 0x7f0b0566

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v5, v8}, Lcom/ijinshan/bootmanager/b/a;->a(Z)V

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080093

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    const v6, 0x7f0b0567

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    new-instance v4, Lcom/ijinshan/bootmanager/c/a;

    invoke-direct {v4, p2}, Lcom/ijinshan/bootmanager/c/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/bootmanager/b/a;

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.ijinshan.mguard"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.ijinshan.mPrivacy"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.ijinshan.kbatterydoctor"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v5, "com.ijinshan.duba"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v4, v0}, Lcom/ijinshan/bootmanager/c/a;->a(Lcom/ijinshan/bootmanager/b/a;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/keniu/security/main/a/a;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Lcom/ijinshan/bootmanager/c/a;->a()V

    iget-object v0, p0, Lcom/keniu/security/main/a/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/keniu/security/main/a/a;->k:I

    .line 83
    iget v0, p0, Lcom/keniu/security/main/a/a;->k:I

    if-lez v0, :cond_8

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u673a\u542f\u52a8\u9879"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/main/a/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->b:Ljava/lang/String;

    .line 85
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/a;->h:I

    .line 91
    :goto_5
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->b(Lcom/keniu/security/main/a/m;)I

    .line 93
    return-void

    .line 88
    :cond_8
    const-string v0, "\u5f00\u673a\u542f\u52a8\u9879\u4f18\u5316"

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->b:Ljava/lang/String;

    .line 89
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/a;->h:I

    goto :goto_5
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 271
    sget-boolean v0, Lcom/keniu/security/main/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/main/a/a;->a:Z

    .line 273
    if-eqz p1, :cond_1

    .line 274
    new-instance v0, Lcom/keniu/security/main/a/c;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/a/c;-><init>(Lcom/keniu/security/main/a/a;)V

    invoke-virtual {v0}, Lcom/keniu/security/main/a/c;->start()V

    .line 282
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/a;->h:I

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5173\u95ed\u5f00\u673a\u542f\u52a8\u9879"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/main/a/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->b:Ljava/lang/String;

    .line 284
    const-string v0, "\u5df2\u4f18\u5316"

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->e:Ljava/lang/String;

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/a;->h:I

    .line 287
    const-string v0, "\u672a\u83b7Root\u6743\u9650\uff0c\u5f00\u673a\u542f\u52a8\u9879\u4f18\u5316\u5931\u8d25"

    iput-object v0, p0, Lcom/keniu/security/main/a/a;->b:Ljava/lang/String;

    .line 288
    sget-object v0, Lcom/keniu/security/main/MainActivity;->d:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/keniu/security/main/MainActivity;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/keniu/security/main/a/a;->h:I

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/keniu/security/main/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x50

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/keniu/security/main/a/k;->c:I

    iput v0, p0, Lcom/keniu/security/main/a/a;->g:I

    .line 103
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/keniu/security/main/a/a;->h:I

    sget v1, Lcom/keniu/security/main/a/k;->h:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/keniu/security/main/a/a;->h:I

    sget v1, Lcom/keniu/security/main/a/k;->g:I

    if-ne v0, v1, :cond_1

    .line 181
    :cond_0
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method
