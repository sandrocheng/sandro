.class public final Lcom/jxphone/mosecurity/a/a;
.super Ljava/lang/Object;
.source "Commons.java"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field public static c:Z = false

.field public static final d:Ljava/lang/String; = "http://st.ios.ijinshan.com/active/"

.field public static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 649
    const-string v0, "moseinstime.txt"

    sput-object v0, Lcom/jxphone/mosecurity/a/a;->a:Ljava/lang/String;

    .line 650
    const-string v0, "uuid.txt"

    sput-object v0, Lcom/jxphone/mosecurity/a/a;->b:Ljava/lang/String;

    .line 789
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jxphone/mosecurity/a/a;->c:Z

    .line 974
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/jxphone/mosecurity/a/a;->e:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 655
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mosecurity/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/jxphone/mosecurity/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 661
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 662
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 663
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    .line 664
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 667
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 675
    :goto_0
    return-wide v0

    .line 669
    :catch_0
    move-exception v0

    move-wide v0, v4

    goto :goto_0

    .line 673
    :catch_1
    move-exception v0

    move-wide v0, v4

    goto :goto_0

    :cond_0
    move-wide v0, v4

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 61
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 923
    const-string v0, ""

    .line 925
    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    move-object v1, v0

    move v0, v3

    .line 926
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 929
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v0

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 931
    array-length v2, p0

    sub-int/2addr v2, v4

    if-ge v0, v2, :cond_0

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 926
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 936
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)V
    .locals 3
    .parameter

    .prologue
    .line 680
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mosecurity/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 683
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 684
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    if-nez v1, :cond_0

    .line 686
    const/4 v1, 0x0

    .line 688
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 689
    :try_start_2
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 692
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 694
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 696
    :catch_1
    move-exception v0

    goto :goto_0

    .line 692
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    .line 694
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 696
    :cond_1
    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 702
    :catch_2
    move-exception v0

    goto :goto_0

    .line 696
    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_3

    .line 692
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 21
    .parameter

    .prologue
    .line 793
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 795
    sget-wide v7, Lcom/jxphone/mosecurity/a/a;->e:J

    const-wide/16 v9, -0x1

    cmp-long p0, v7, v9

    if-nez p0, :cond_0

    const-string p0, "report_flag"

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v5, "report_timer"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sput-wide v7, Lcom/jxphone/mosecurity/a/a;->e:J

    :cond_0
    sget-wide v7, Lcom/jxphone/mosecurity/a/a;->e:J

    const-wide/16 v9, 0x0

    cmp-long p0, v7, v9

    if-eqz p0, :cond_2

    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/util/Date;

    sget-wide v7, Lcom/jxphone/mosecurity/a/a;->e:J

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getDate()I

    move-result p0

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v5

    move/from16 v0, p0

    move v1, v5

    if-ne v0, v1, :cond_2

    const/16 p0, 0x1

    :goto_0
    if-eqz p0, :cond_3

    .line 921
    :cond_1
    :goto_1
    return-void

    .line 795
    :cond_2
    const/16 p0, 0x0

    goto :goto_0

    .line 798
    :cond_3
    sget-boolean p0, Lcom/jxphone/mosecurity/a/a;->c:Z

    if-nez p0, :cond_1

    .line 801
    const/16 p0, 0x1

    sput-boolean p0, Lcom/jxphone/mosecurity/a/a;->c:Z

    .line 803
    invoke-static {v6}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/a;->aR()Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x0

    .line 804
    :goto_2
    sget-object v5, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v11

    .line 810
    const-string v5, "report_flag"

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 816
    const-string v7, "report_uuid_imei"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 817
    const-string v8, "report_uuid_imsi"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 818
    const-string v9, "report_lasttime"

    const-wide/16 v12, 0x0

    invoke-interface {v5, v9, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 819
    invoke-static {v7}, Lcom/jxphone/mosecurity/a/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v8}, Lcom/jxphone/mosecurity/a/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 822
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/jxphone/mosecurity/a/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 823
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 824
    const-string v9, "imei="

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "imsi="

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 825
    const-string v9, "imsi="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const-string v10, "imei="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v7, v9, v10

    .line 826
    const-string v9, "imsi="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    aget-object v5, v5, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_3
    invoke-static {v7}, Lcom/jxphone/mosecurity/a/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 835
    invoke-static {v6}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 837
    :cond_5
    invoke-static {v5}, Lcom/jxphone/mosecurity/a/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 838
    invoke-static {v6}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    move-object v9, v7

    .line 844
    :goto_4
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 846
    invoke-static {}, Lcom/jxphone/mosecurity/a/a;->a()J

    move-result-wide v7

    .line 847
    const-wide/16 v14, 0x0

    cmp-long v14, v7, v14

    if-lez v14, :cond_9

    .line 849
    :goto_5
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 851
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v14

    .line 852
    const/16 v15, 0x10

    new-array v15, v15, [[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "s"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string v19, "0401000301"

    aput-object v19, v17, v18

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "imei"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v9, v17, v18

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "imsi"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v10, v17, v18

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "lasttime"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v17, v18

    aput-object v17, v15, v16

    const/4 v12, 0x4

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "var"

    aput-object v17, v13, v16

    const/16 v16, 0x1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v16

    aput-object v13, v15, v12

    const/4 v12, 0x5

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "model"

    aput-object v17, v13, v16

    const/16 v16, 0x1

    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v17, v13, v16

    aput-object v13, v15, v12

    const/4 v12, 0x6

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "value"

    aput-object v17, v13, v16

    const/16 v16, 0x1

    sget-object v17, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    aput-object v17, v13, v16

    aput-object v13, v15, v12

    const/4 v12, 0x7

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "info"

    aput-object v17, v13, v16

    const/16 v16, 0x1

    sget-object v17, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v17, v13, v16

    aput-object v13, v15, v12

    const/16 v12, 0x8

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "channel"

    aput-object v17, v13, v16

    const/16 v16, 0x1

    invoke-static {v6}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v16

    aput-object v13, v15, v12

    const/16 v12, 0x9

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "res"

    aput-object v17, v13, v16

    const/16 v16, 0x1

    invoke-static {}, Lcom/keniu/security/e;->a()Z

    move-result v17

    if-eqz v17, :cond_a

    const-string v17, "1"

    :goto_6
    aput-object v17, v13, v16

    aput-object v13, v15, v12

    const/16 v12, 0xa

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "type"

    aput-object v17, v13, v16

    const/16 v16, 0x1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->b(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_b

    const-string v17, "16"

    :goto_7
    aput-object v17, v13, v16

    aput-object v13, v15, v12

    const/16 v12, 0xb

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "actionname"

    aput-object v17, v13, v16

    const/16 v16, 0x1

    const-string v17, "ac"

    aput-object v17, v13, v16

    aput-object v13, v15, v12

    const/16 v12, 0xc

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "actiontime"

    aput-object v17, v13, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v16

    aput-object v13, v15, v12

    const/16 v12, 0xd

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "atime"

    aput-object v17, v13, v16

    const/16 v16, 0x1

    aput-object v5, v13, v16

    aput-object v13, v15, v12

    const/16 v5, 0xe

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v16, "inst"

    aput-object v16, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v12, v13

    aput-object v12, v15, v5

    const/16 p0, 0xf

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "amobileroot"

    aput-object v13, v5, v12

    const/4 v12, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    aput-object v5, v15, p0

    .line 874
    new-instance v5, Lcom/jxphone/mosecurity/a/b;

    invoke-direct/range {v5 .. v10}, Lcom/jxphone/mosecurity/a/b;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 903
    new-instance p0, Lcom/jxphone/mosecurity/a/c;

    invoke-direct/range {p0 .. p0}, Lcom/jxphone/mosecurity/a/c;-><init>()V

    .line 910
    const/4 v6, 0x0

    .line 912
    :try_start_1
    invoke-static {v15}, Lcom/jxphone/mosecurity/a/a;->a([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 917
    :goto_8
    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    .line 918
    const-string v7, "http://st.ios.ijinshan.com/active/"

    move-object v0, v11

    move-object v1, v6

    move-object v2, v5

    move-object/from16 v3, p0

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jxphone/a/a/a;->a([BLcom/jxphone/a/a/h;Lcom/jxphone/a/a/g;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 803
    :cond_6
    const-string p0, "report_flag"

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v5, "report_timer"

    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {}, Lcom/jxphone/mosecurity/a/a;->a()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long p0, v7, v11

    if-nez p0, :cond_7

    const-wide/16 v7, 0x0

    cmp-long p0, v9, v7

    if-lez p0, :cond_8

    :cond_7
    const/16 p0, 0x2

    goto/16 :goto_2

    :cond_8
    const/16 p0, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v5

    move-object v5, v7

    move-object v7, v5

    move-object v5, v8

    goto/16 :goto_3

    .line 847
    :cond_9
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    goto/16 :goto_5

    .line 852
    :cond_a
    const-string v17, "-1"

    goto/16 :goto_6

    :cond_b
    const-string v17, "32"

    goto/16 :goto_7

    .line 913
    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :cond_c
    move-object v10, v5

    move-object v9, v7

    goto/16 :goto_4

    :cond_d
    move-object v5, v8

    goto/16 :goto_3

    :cond_e
    move-object v10, v8

    move-object v9, v7

    goto/16 :goto_4
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "bksms"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    .line 135
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 552
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 555
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 556
    const/16 v1, 0x9

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "mgt_vmalres"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/16 v0, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    .line 569
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 571
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;IZLjava/lang/String;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 625
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 628
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 629
    const/16 v1, 0xb

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v5

    const-string v3, "0401000301"

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v1, v6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    aput-object v2, v1, v7

    const/4 v0, 0x3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v5

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v5

    const-string v3, "mgt_vscantime"

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/16 v0, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "res"

    aput-object v3, v2, v5

    if-eqz p2, :cond_1

    const-string v3, "stop"

    :goto_1
    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/16 v0, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "content"

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    aput-object v2, v1, v0

    const/16 v0, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    .line 644
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 646
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 629
    :cond_1
    const-string v3, "done"

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 103
    const/16 v1, 0x9

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v6

    const-string v3, "0401000301"

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v6

    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v8

    const/4 v2, 0x3

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "model"

    aput-object v4, v3, v6

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "info"

    aput-object v4, v3, v6

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "channel"

    aput-object v4, v3, v6

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "dt"

    aput-object v4, v3, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/keniu/security/util/i;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "actionname"

    aput-object v4, v3, v6

    const-string v4, "blockteltype"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "type"

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    aput-object v3, v1, v2

    .line 115
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 332
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 336
    const/16 v1, 0x9

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "blockerror"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object v2, v1, v0

    const/16 v0, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    .line 348
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 350
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 439
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 443
    const/16 v1, 0xb

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v5

    const-string v3, "0401000301"

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v1, v6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    aput-object v2, v1, v7

    const/4 v0, 0x3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v5

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v5

    const-string v3, "ad_check_data_feedback"

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/16 v0, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ad_check_apk_package_name"

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    aput-object v2, v1, v0

    const/16 v0, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ad_check_apk_package_size"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/16 v0, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ad_check_apk_notification_content"

    aput-object v3, v2, v5

    aput-object p4, v2, v6

    aput-object v2, v1, v0

    .line 458
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 460
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 247
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 251
    const/16 v1, 0x9

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v5

    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "var"

    aput-object v2, v0, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "traf_ck"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object v2, v1, v0

    const/16 v0, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    aput-object v2, v1, v0

    .line 262
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 527
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 531
    const/16 v1, 0x9

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    aput-object v2, v1, v0

    const/16 v0, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    aput-object v2, v1, v0

    .line 542
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 544
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 581
    if-nez p3, :cond_0

    .line 582
    const-string p3, ""

    .line 585
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x30

    if-le v2, v3, :cond_1

    .line 586
    const/16 v2, 0x30

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 589
    :cond_1
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v2

    .line 590
    invoke-virtual {v2}, Lcom/keniu/security/a;->aH()Z

    move-result v2

    if-nez v2, :cond_2

    .line 618
    :goto_0
    return-void

    .line 592
    :cond_2
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 593
    const/16 v3, 0x12

    new-array v3, v3, [[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "s"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "0401000301"

    aput-object v7, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "var"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "uuid"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    aput-object v5, v3, v4

    const/4 v2, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "model"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "info"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "channel"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "actionname"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mgt_vkill"

    aput-object v6, v4, v5

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    if-eqz p5, :cond_3

    const-string p5, "rom"

    :goto_1
    aput-object p5, v4, v5

    aput-object v4, v3, v2

    const/16 p5, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "content"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p7, v2, v4

    aput-object v2, v3, p5

    const/16 p5, 0x9

    const/4 p7, 0x2

    new-array p7, p7, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "res"

    aput-object v4, p7, v2

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p8

    const-string v4, ""

    move-object/from16 v0, p8

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    invoke-virtual/range {p8 .. p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    aput-object p8, p7, v2

    aput-object p7, v3, p5

    const/16 p5, 0xa

    const/4 p7, 0x2

    new-array p7, p7, [Ljava/lang/String;

    const/16 p8, 0x0

    const-string v2, "value"

    aput-object v2, p7, p8

    const/16 p8, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p9

    const-string v2, ""

    move-object/from16 v0, p9

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p9

    invoke-virtual/range {p9 .. p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    aput-object p9, p7, p8

    aput-object p7, v3, p5

    const/16 p5, 0xb

    const/4 p7, 0x2

    new-array p7, p7, [Ljava/lang/String;

    const/16 p8, 0x0

    const-string p9, "sysversion"

    aput-object p9, p7, p8

    const/16 p8, 0x1

    aput-object p1, p7, p8

    aput-object p7, v3, p5

    const/16 p1, 0xc

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/String;

    const/4 p7, 0x0

    const-string p8, "md5"

    aput-object p8, p5, p7

    const/4 p7, 0x1

    aput-object p2, p5, p7

    aput-object p5, v3, p1

    const/16 p1, 0xd

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p5, 0x0

    const-string p7, "malname"

    aput-object p7, p2, p5

    const/4 p5, 0x1

    aput-object p3, p2, p5

    aput-object p2, v3, p1

    const/16 p1, 0xe

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string p5, "malpackname"

    aput-object p5, p2, p3

    const/4 p3, 0x1

    aput-object p4, p2, p3

    aput-object p2, v3, p1

    const/16 p1, 0xf

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string p4, "findoperate"

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p6, p2, p3

    aput-object p2, v3, p1

    const/16 p1, 0x10

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string p4, "authorize"

    aput-object p4, p2, p3

    const/4 p3, 0x1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p4

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    aput-object p2, v3, p1

    const/16 p1, 0x11

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string p4, "sdcard"

    aput-object p4, p2, p3

    const/4 p3, 0x1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p4

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    aput-object p2, v3, p1

    .line 615
    sget-object p1, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object p0

    .line 617
    invoke-virtual {p0, v3}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    :cond_3
    const-string p5, "common"

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 145
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "cloudcheckstate"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    if-eqz p1, :cond_1

    const-string v3, "1"

    :goto_1
    aput-object v3, v2, v5

    aput-object v2, v1, v0

    .line 156
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    const-string v3, "0"

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 743
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mosecurity/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 746
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 747
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 748
    const/4 v1, 0x0

    .line 752
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 753
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 757
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 759
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 761
    :catch_1
    move-exception v0

    goto :goto_0

    .line 757
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    .line 759
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 761
    :cond_1
    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 766
    :catch_2
    move-exception v0

    goto :goto_0

    .line 761
    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_3

    .line 757
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 3
    .parameter

    .prologue
    .line 941
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 942
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 943
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 944
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 946
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 770
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 772
    invoke-virtual {v0}, Lcom/keniu/security/a;->aR()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 784
    :goto_0
    return v0

    .line 775
    :cond_0
    const-string v0, "report_flag"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 777
    const-string v1, "report_timer"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 779
    invoke-static {}, Lcom/jxphone/mosecurity/a/a;->a()J

    move-result-wide v2

    .line 780
    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 781
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 784
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 705
    const-string v0, ""

    .line 710
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mosecurity/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jxphone/mosecurity/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 713
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 714
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 719
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 720
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    .line 730
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 731
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v2

    .line 738
    :goto_2
    return-object v0

    .line 733
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v2

    .line 736
    goto :goto_2

    .line 727
    :catch_1
    move-exception v1

    move-object v1, v4

    move-object v2, v0

    move-object v0, v4

    .line 730
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 731
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v2

    .line 735
    goto :goto_2

    .line 733
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v2

    .line 736
    goto :goto_2

    .line 729
    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 730
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 731
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 735
    :goto_5
    throw v0

    .line 733
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 729
    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 727
    :catch_4
    move-exception v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_3

    :catch_5
    move-exception v3

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_3

    :cond_1
    move-object v1, v4

    move-object v2, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 464
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 468
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "smsscanres"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    .line 479
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 481
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 187
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v5

    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "var"

    aput-object v2, v0, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "ck_nty"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object v2, v1, v0

    .line 198
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 506
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 510
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    aput-object v2, v1, v0

    .line 520
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 522
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 375
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 379
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "desksmsctx"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    if-eqz p1, :cond_1

    const-string v3, "1"

    :goto_1
    aput-object v3, v2, v5

    aput-object v2, v1, v0

    .line 390
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 392
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_1
    const-string v3, "0"

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 68
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 72
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 72
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 952
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 970
    :goto_0
    return v0

    .line 955
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    move v0, v2

    .line 956
    goto :goto_0

    .line 958
    :cond_1
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 959
    goto :goto_0

    .line 961
    :cond_2
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 962
    goto :goto_0

    .line 964
    :cond_3
    const-string v0, "11111111"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 965
    goto :goto_0

    .line 967
    :cond_4
    const-string v0, "123456789"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 968
    goto :goto_0

    .line 970
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v5

    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "var"

    aput-object v2, v0, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "traffic"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object v2, v1, v0

    .line 219
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 418
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 422
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "outcwdsck"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    if-eqz p1, :cond_1

    const-string v3, "1"

    :goto_1
    aput-object v3, v2, v5

    aput-object v2, v1, v0

    .line 433
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 435
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_1
    const-string v3, "0"

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 977
    sget-wide v0, Lcom/jxphone/mosecurity/a/a;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 978
    const-string v0, "report_flag"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 980
    const-string v1, "report_timer"

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/jxphone/mosecurity/a/a;->e:J

    .line 982
    :cond_0
    sget-wide v0, Lcom/jxphone/mosecurity/a/a;->e:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    move v0, v4

    .line 990
    :goto_0
    return v0

    .line 985
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 986
    new-instance v1, Ljava/util/Date;

    sget-wide v2, Lcom/jxphone/mosecurity/a/a;->e:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 987
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 988
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    .line 990
    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 225
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 229
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v5

    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "var"

    aput-object v2, v0, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "traf_ck"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object v2, v1, v0

    .line 240
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 166
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "confirmupdate"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    if-eqz p1, :cond_1

    const-string v3, "1"

    :goto_1
    aput-object v3, v2, v5

    aput-object v2, v1, v0

    .line 177
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 179
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    const-string v3, "0"

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 268
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 272
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v5

    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "var"

    aput-object v2, v0, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "traf_setting"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object v2, v1, v0

    .line 283
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 285
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 289
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 293
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v5

    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "var"

    aput-object v2, v0, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "rates_ck"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object v2, v1, v0

    .line 304
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 354
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 358
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "smsscan"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object v2, v1, v0

    .line 369
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 371
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 396
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 400
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "outcwds"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object v2, v1, v0

    .line 411
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 413
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 485
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 489
    const/4 v1, 0x7

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "var"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object v2, v1, v0

    .line 499
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 501
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 310
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 314
    const/16 v1, 0x8

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v4

    const-string v3, "0401000301"

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v2, v1, v5

    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "var"

    aput-object v2, v0, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v6

    const/4 v0, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "model"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v4

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "actionname"

    aput-object v3, v2, v4

    const-string v3, "blockerroraddwhite"

    aput-object v3, v2, v5

    aput-object v2, v1, v0

    const/4 v0, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object v2, v1, v0

    .line 325
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 327
    invoke-virtual {v0, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;)V

    goto :goto_0
.end method
