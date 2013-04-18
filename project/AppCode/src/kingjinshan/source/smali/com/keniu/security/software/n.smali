.class final Lcom/keniu/security/software/n;
.super Ljava/lang/Thread;
.source "APKManagerActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/software/APKManagerActivity;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/keniu/security/software/APKManagerActivity;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 740
    iput-object p1, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 737
    iput-object v0, p0, Lcom/keniu/security/software/n;->b:Landroid/os/Handler;

    .line 738
    iput-object v0, p0, Lcom/keniu/security/software/n;->c:Ljava/util/List;

    .line 741
    iput-object p2, p0, Lcom/keniu/security/software/n;->b:Landroid/os/Handler;

    .line 742
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Lcom/keniu/security/d/a;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 844
    new-instance v2, Lcom/keniu/security/d/a;

    invoke-direct {v2}, Lcom/keniu/security/d/a;-><init>()V

    .line 846
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/d/a;->a(J)V

    .line 849
    invoke-virtual {v2, p2}, Lcom/keniu/security/d/a;->d(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/keniu/security/d/a;->e(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/d/a;->b(J)V

    .line 852
    const-string v0, "android.content.pm.PackageParser"

    .line 853
    const-string v1, "android.content.res.AssetManager"

    .line 856
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 857
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 858
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 860
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    .line 861
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 864
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 865
    invoke-virtual {v5}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 866
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/io/File;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Landroid/util/DisplayMetrics;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 868
    const-string v7, "parsePackage"

    invoke-virtual {v0, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 871
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object v5, v6, v7

    const/4 v5, 0x3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 875
    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 879
    if-nez v0, :cond_0

    move-object v0, v11

    .line 990
    :goto_0
    return-object v0

    .line 882
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "applicationInfo"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 886
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v0, v11

    .line 887
    goto :goto_0

    .line 889
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 893
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 894
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 896
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    .line 897
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 898
    const-string v6, "addAssetPath"

    invoke-virtual {v1, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 900
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 901
    const/4 v6, 0x0

    aput-object p2, v5, v6

    .line 903
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 907
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    .line 908
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    .line 909
    const/4 v6, 0x1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    .line 910
    const/4 v6, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    .line 911
    const-class v6, Landroid/content/res/Resources;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 913
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 914
    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 915
    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    aput-object v7, v6, v4

    .line 916
    const/4 v4, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    aput-object v1, v6, v4

    .line 917
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    .line 920
    if-eqz v0, :cond_7

    .line 922
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v4, :cond_5

    .line 923
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/keniu/security/d/a;->b(Ljava/lang/String;)V

    .line 930
    :goto_1
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/keniu/security/d/a;->a(Ljava/lang/String;)V

    .line 933
    iget-object v1, p0, Lcom/keniu/security/software/n;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    .line 934
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v10

    .line 949
    :goto_2
    if-nez v1, :cond_6

    .line 951
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/keniu/security/d/a;->a(Z)V

    .line 952
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/keniu/security/d/a;->b(Z)V

    .line 953
    const/4 v1, 0x4

    iput v1, v2, Lcom/keniu/security/d/a;->e:I

    .line 955
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v0, :cond_3

    .line 980
    :cond_3
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 981
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 983
    if-eqz v0, :cond_4

    .line 984
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/keniu/security/d/a;->c(Ljava/lang/String;)V

    :cond_4
    move-object v0, v2

    .line 986
    goto/16 :goto_0

    .line 925
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 926
    const/4 v3, 0x0

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/keniu/security/d/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 987
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v11

    .line 990
    goto/16 :goto_0

    .line 970
    :cond_6
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/keniu/security/d/a;->a(Z)V

    .line 971
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/keniu/security/d/a;->b(Z)V

    .line 972
    const/4 v0, 0x2

    iput v0, v2, Lcom/keniu/security/d/a;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_7
    move-object v0, v11

    .line 977
    goto/16 :goto_0

    :cond_8
    move v1, v9

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 790
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 791
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 792
    if-nez v0, :cond_1

    .line 841
    :cond_0
    return-void

    :cond_1
    move v1, v6

    .line 796
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 797
    iget-object v2, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v2}, Lcom/keniu/security/software/APKManagerActivity;->w(Lcom/keniu/security/software/APKManagerActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 799
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 800
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 801
    iput v7, v2, Landroid/os/Message;->what:I

    .line 802
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 803
    const-string v4, "path"

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 805
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 806
    iget-object v3, p0, Lcom/keniu/security/software/n;->b:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 809
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 810
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/keniu/security/software/n;->a(Ljava/lang/String;)V

    .line 796
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    :cond_4
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 813
    iget-object v2, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-virtual {v2}, Lcom/keniu/security/software/APKManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/keniu/security/software/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/keniu/security/d/a;

    move-result-object v2

    .line 816
    if-eqz v2, :cond_6

    .line 818
    invoke-virtual {v2}, Lcom/keniu/security/d/a;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 819
    iget-object v3, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/software/APKManagerActivity;->u(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    :goto_2
    iget-object v3, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-virtual {v2}, Lcom/keniu/security/d/a;->c()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/keniu/security/software/APKManagerActivity;->b(Lcom/keniu/security/software/APKManagerActivity;J)J

    goto :goto_1

    .line 821
    :cond_5
    iget-object v3, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/software/APKManagerActivity;->v(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 825
    :cond_6
    new-instance v2, Lcom/keniu/security/d/a;

    invoke-direct {v2}, Lcom/keniu/security/d/a;-><init>()V

    .line 826
    iput v7, v2, Lcom/keniu/security/d/a;->e:I

    .line 827
    invoke-virtual {v2}, Lcom/keniu/security/d/a;->j()V

    .line 828
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/keniu/security/d/a;->b(Z)V

    .line 829
    invoke-virtual {v2, v6}, Lcom/keniu/security/d/a;->a(Z)V

    .line 830
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keniu/security/d/a;->b(Ljava/lang/String;)V

    .line 832
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keniu/security/d/a;->e(Ljava/lang/String;)V

    .line 833
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/d/a;->b(J)V

    .line 834
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keniu/security/d/a;->d(Ljava/lang/String;)V

    .line 835
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/d/a;->a(J)V

    .line 836
    iget-object v3, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/software/APKManagerActivity;->v(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    .line 746
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/keniu/security/software/n;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 787
    :goto_0
    return-void

    .line 752
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 755
    iget-object v1, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;Ljava/util/List;)Ljava/util/List;

    .line 756
    iget-object v1, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/keniu/security/software/APKManagerActivity;->b(Lcom/keniu/security/software/APKManagerActivity;Ljava/util/List;)Ljava/util/List;

    .line 758
    new-instance v1, Lcom/keniu/security/d/a;

    invoke-direct {v1}, Lcom/keniu/security/d/a;-><init>()V

    .line 759
    iput v3, v1, Lcom/keniu/security/d/a;->e:I

    .line 760
    iget-object v2, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v2}, Lcom/keniu/security/software/APKManagerActivity;->u(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    new-instance v1, Lcom/keniu/security/d/a;

    invoke-direct {v1}, Lcom/keniu/security/d/a;-><init>()V

    .line 763
    iput v5, v1, Lcom/keniu/security/d/a;->e:I

    .line 764
    iget-object v2, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v2}, Lcom/keniu/security/software/APKManagerActivity;->v(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v1, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-virtual {v1}, Lcom/keniu/security/software/APKManagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 767
    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/software/n;->c:Ljava/util/List;

    .line 770
    invoke-direct {p0, v0}, Lcom/keniu/security/software/n;->a(Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    iget-object v1, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/software/APKManagerActivity;->v(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/keniu/security/software/APKManagerActivity;->b(Lcom/keniu/security/software/APKManagerActivity;I)I

    .line 772
    iget-object v0, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    iget-object v1, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/software/APKManagerActivity;->u(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/keniu/security/software/APKManagerActivity;->c(Lcom/keniu/security/software/APKManagerActivity;I)I

    .line 773
    iget-object v0, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->j(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/software/APKManagerActivity;->k(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v1

    add-int/2addr v0, v1

    if-gtz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/keniu/security/software/n;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/keniu/security/software/APKManagerActivity;->c(Lcom/keniu/security/software/APKManagerActivity;Ljava/util/List;)Ljava/util/List;

    .line 782
    iget-object v0, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->m(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/software/APKManagerActivity;->u(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 783
    iget-object v0, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->m(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/software/APKManagerActivity;->v(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 784
    iget-object v0, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    new-instance v1, Lcom/keniu/security/software/k;

    iget-object v2, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    iget-object v3, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-virtual {v3}, Lcom/keniu/security/software/APKManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/software/n;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v4}, Lcom/keniu/security/software/APKManagerActivity;->m(Lcom/keniu/security/software/APKManagerActivity;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/keniu/security/software/k;-><init>(Lcom/keniu/security/software/APKManagerActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;Lcom/keniu/security/software/k;)Lcom/keniu/security/software/k;

    .line 786
    iget-object v0, p0, Lcom/keniu/security/software/n;->b:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
