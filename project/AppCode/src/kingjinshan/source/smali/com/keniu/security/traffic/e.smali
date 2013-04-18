.class public final Lcom/keniu/security/traffic/e;
.super Ljava/lang/Object;
.source "Api.java"


# static fields
.field public static final a:I = -0xa

.field public static final b:I = -0xb

.field public static final c:D = 1048576.0

.field public static final d:Ljava/lang/String; = "DroidWallPrefs"

.field public static final e:Ljava/lang/String; = "AllowedUids3G"

.field public static final f:Ljava/lang/String; = "AllowedUidsWifi"

.field public static final g:Ljava/lang/String; = "blacklist"

.field public static final h:Ljava/lang/String; = "BlockMode"

.field public static i:[Lcom/keniu/security/traffic/f; = null

.field public static j:Lcom/keniu/security/malware/bz; = null

.field public static k:Z = false

.field public static l:Z = false

.field private static final m:Ljava/lang/String; = "droidwall.sh"

.field private static n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/traffic/e;->i:[Lcom/keniu/security/traffic/f;

    .line 55
    sput-boolean v1, Lcom/keniu/security/traffic/e;->n:Z

    .line 57
    sput-boolean v1, Lcom/keniu/security/traffic/e;->k:Z

    .line 58
    sput-boolean v1, Lcom/keniu/security/traffic/e;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 711
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/32 v4, 0x9c40

    .line 675
    new-instance v0, Ljava/io/File;

    const-string v1, "bin"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "droidwall.sh"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 676
    new-instance v1, Lcom/keniu/security/traffic/h;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/keniu/security/traffic/h;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 677
    invoke-virtual {v1}, Lcom/keniu/security/traffic/h;->start()V

    .line 679
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    .line 680
    const-wide/32 v2, 0x9c40

    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/traffic/h;->join(J)V

    .line 684
    :goto_0
    invoke-virtual {v1}, Lcom/keniu/security/traffic/h;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v1}, Lcom/keniu/security/traffic/h;->interrupt()V

    .line 687
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/traffic/h;->join(J)V

    .line 689
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/traffic/h;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :cond_0
    :goto_1
    iget v0, v1, Lcom/keniu/security/traffic/h;->a:I

    return v0

    .line 682
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/keniu/security/traffic/h;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-static {p0, v4}, Lcom/keniu/security/traffic/e;->c(Landroid/content/Context;Z)[Lcom/keniu/security/traffic/f;

    move-result-object v0

    move v1, v4

    .line 62
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 63
    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 64
    aget-object v2, v0, v1

    iget-boolean v2, v2, Lcom/keniu/security/traffic/f;->k:Z

    if-eqz v2, :cond_0

    .line 65
    aget-object v2, v0, v1

    iget v2, v2, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v2, v4}, Lcom/keniu/security/traffic/q;->c(IZ)V

    .line 62
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    aget-object v2, v0, v1

    iget v2, v2, Lcom/keniu/security/traffic/f;->a:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/keniu/security/traffic/q;->c(IZ)V

    goto :goto_1

    .line 70
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x7c

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 797
    invoke-static {}, Lcom/keniu/security/traffic/q;->d()Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-static {}, Lcom/keniu/security/traffic/q;->e()Ljava/lang/String;

    move-result-object v1

    .line 799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 802
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 804
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v4, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 805
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 806
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 807
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 808
    const-string v0, "DroidWall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from the wi-fi list (package removed)!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 810
    goto :goto_0

    .line 812
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 813
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 814
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 817
    :cond_2
    if-eqz v0, :cond_3

    .line 818
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keniu/security/traffic/q;->a(Ljava/lang/String;)V

    .line 822
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v4, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :goto_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 826
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 827
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 828
    const-string v0, "DroidWall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from the 3G list (package removed)!"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 830
    goto :goto_2

    .line 832
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 833
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 834
    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 837
    :cond_6
    if-eqz v0, :cond_7

    .line 838
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/traffic/q;->b(Ljava/lang/String;)V

    .line 842
    :cond_7
    if-eqz v0, :cond_8

    .line 843
    invoke-static {p0, v8}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Z)Z

    .line 845
    :cond_8
    return-void

    :cond_9
    move v0, v8

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 126
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 128
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 129
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 132
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 135
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 81
    if-eqz p0, :cond_0

    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 85
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 153
    if-nez p0, :cond_0

    move v0, v7

    .line 270
    :goto_0
    return v0

    .line 156
    :cond_0
    invoke-static {p0, p3}, Lcom/keniu/security/traffic/e;->e(Landroid/content/Context;Z)Z

    .line 157
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tiwlan+"

    aput-object v1, v0, v7

    const-string v1, "wlan+"

    aput-object v1, v0, v8

    const-string v1, "eth+"

    aput-object v1, v0, v3

    const-string v1, "ra+"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "mlan+"

    aput-object v2, v0, v1

    .line 158
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "rmnet+"

    aput-object v2, v1, v7

    const-string v2, "pdp+"

    aput-object v2, v1, v8

    const-string v2, "ppp+"

    aput-object v2, v1, v3

    const-string v2, "uwbr+"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    const-string v3, "wimax+"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "vsnet+"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "ccmni+"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "usb+"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "qmi+"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "ccinet+"

    aput-object v3, v1, v2

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    :try_start_0
    const-string v3, "export LD_LIBRARY_PATH=%s\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "LD_LIBRARY_PATH"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {p0}, Lcom/keniu/security/traffic/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v3, "$IPTABLES --version\n# Create the DROIDWALL chains if necessary\n$IPTABLES --new DROIDWALL\n$IPTABLES --new DROIDWALL_MOBILE\n$IPTABLES --new DROIDWALL_WIFI\n$IPTABLES --new DROIDWALL_REJECT\n# Add DROIDWALL chain to OUTPUT chain if necessary\n$IPTABLES -D OUTPUT -j DROIDWALL\n$IPTABLES -I OUTPUT -j DROIDWALL\n$IPTABLES -F DROIDWALL || exit 7\n$IPTABLES -F DROIDWALL_MOBILE || exit 8\n$IPTABLES -F DROIDWALL_WIFI || exit 9\n$IPTABLES -F DROIDWALL_REJECT || exit 10\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v3, "# Create the reject rule (log disabled)\n$IPTABLES -A DROIDWALL_REJECT -j REJECT || exit 11\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v3, "# Main rules (per interface)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    array-length v3, v1

    move v4, v7

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 186
    const-string v6, "$IPTABLES -A DROIDWALL -o "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -j DROIDWALL_MOBILE || exit\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 189
    :cond_1
    array-length v1, v0

    move v3, v7

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 190
    const-string v5, "$IPTABLES -A DROIDWALL -o "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -j DROIDWALL_WIFI || exit\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 194
    :cond_2
    const-string v0, "# Filtering rules\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    sget-boolean v0, Lcom/keniu/security/traffic/e;->k:Z

    if-eqz v0, :cond_7

    .line 200
    const-string v0, "$IPTABLES -A DROIDWALL_MOBILE -j "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DROIDWALL_REJECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " || exit\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_3
    sget-boolean v0, Lcom/keniu/security/traffic/e;->l:Z

    if-eqz v0, :cond_a

    .line 214
    const-string v0, "$IPTABLES -A DROIDWALL_WIFI -j "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DROIDWALL_REJECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " || exit\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_4
    const/16 v0, -0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 228
    const-string v0, "# hack to BLOCK kernel packets on black-list\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v0, "$IPTABLES -A DROIDWALL_MOBILE -m owner --uid-owner 0:999999999 -j RETURN || exit\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v0, "$IPTABLES -A DROIDWALL_MOBILE -j DROIDWALL_REJECT || exit\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_5
    const/16 v0, -0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 235
    const-string v0, "# hack to BLOCK kernel packets on black-list\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v0, "$IPTABLES -A DROIDWALL_WIFI -m owner --uid-owner 0:999999999 -j RETURN || exit\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v0, "$IPTABLES -A DROIDWALL_WIFI -j DROIDWALL_REJECT || exit\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)I

    move-result v0

    .line 243
    if-eqz p3, :cond_c

    if-eqz v0, :cond_c

    .line 256
    const v0, 0x7f0b037d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 259
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "applyIptablesRulesImpl"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    move v0, v7

    .line 270
    goto/16 :goto_0

    .line 204
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 205
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_8

    .line 206
    const-string v3, "$IPTABLES -A DROIDWALL_MOBILE -m owner --uid-owner "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -j "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DROIDWALL_REJECT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " || exit\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 264
    :catch_0
    move-exception v0

    if-eqz p3, :cond_9

    .line 265
    const v0, 0x7f0b037d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 268
    :cond_9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "applyIptablesRulesImpl"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 218
    :cond_a
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 219
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_b

    .line 220
    const-string v3, "$IPTABLES -A DROIDWALL_WIFI -m owner --uid-owner "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -j "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DROIDWALL_REJECT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " || exit\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_c
    move v0, v8

    .line 261
    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 285
    if-nez p0, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    .line 288
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/traffic/q;->a(Landroid/content/Context;)V

    .line 289
    invoke-static {}, Lcom/keniu/security/traffic/q;->e()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {}, Lcom/keniu/security/traffic/q;->d()Ljava/lang/String;

    move-result-object v1

    .line 291
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 292
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 294
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 297
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 299
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 305
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 308
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 313
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    .line 319
    :cond_4
    invoke-static {p0, v2, v1, p1}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 732
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x7c

    const/4 v3, 0x0

    .line 345
    invoke-static {p0, v3}, Lcom/keniu/security/traffic/e;->c(Landroid/content/Context;Z)[Lcom/keniu/security/traffic/f;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 350
    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 351
    aget-object v4, v0, v3

    iget-boolean v4, v4, Lcom/keniu/security/traffic/f;->c:Z

    if-eqz v4, :cond_1

    .line 352
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    :cond_0
    aget-object v4, v0, v3

    iget v4, v4, Lcom/keniu/security/traffic/f;->a:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    :cond_1
    aget-object v4, v0, v3

    iget-boolean v4, v4, Lcom/keniu/security/traffic/f;->d:Z

    if-eqz v4, :cond_3

    .line 357
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 358
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    :cond_2
    aget-object v4, v0, v3

    iget v4, v4, Lcom/keniu/security/traffic/f;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 363
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/q;->a(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/q;->b(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public static b(Landroid/content/Context;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 331
    if-nez p0, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    .line 334
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/traffic/e;->b(Landroid/content/Context;)V

    .line 335
    invoke-static {p0, p1}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 753
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)I

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 96
    const-string v0, "bin"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/iptables_armv5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPTABLES=iptables\nECHO=echo\n# Try to find iptables\nif "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --version >/dev/null 2>/dev/null ; then\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tIPTABLES="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fi\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Z)[Lcom/keniu/security/traffic/f;
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 426
    :try_start_0
    invoke-static {p0}, Lcom/keniu/security/traffic/z;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/z;

    move-result-object v2

    .line 427
    sget-object v1, Lcom/keniu/security/traffic/e;->i:[Lcom/keniu/security/traffic/f;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 428
    sget-object p0, Lcom/keniu/security/traffic/e;->i:[Lcom/keniu/security/traffic/f;

    .line 632
    :goto_0
    return-object p0

    .line 430
    :cond_0
    const/4 p1, 0x0

    sput-object p1, Lcom/keniu/security/traffic/e;->i:[Lcom/keniu/security/traffic/f;

    .line 432
    invoke-static {p0}, Lcom/keniu/security/traffic/q;->a(Landroid/content/Context;)V

    .line 434
    invoke-static {}, Lcom/keniu/security/traffic/q;->d()Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-static {}, Lcom/keniu/security/traffic/q;->e()Ljava/lang/String;

    move-result-object v1

    .line 437
    const/4 v3, 0x0

    new-array v3, v3, [I

    .line 438
    const/4 v4, 0x0

    new-array v4, v4, [I

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 441
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    new-array p1, p1, [I

    .line 444
    const/4 v5, 0x0

    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_2

    .line 445
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 446
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_1

    .line 448
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/keniu/security/traffic/q;->a(IZ)V

    .line 450
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, p1, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 444
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 452
    :catch_0
    move-exception v6

    const/4 v6, -0x1

    :try_start_2
    aput v6, p1, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 632
    :catch_1
    move-exception p0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/keniu/security/traffic/f;

    goto :goto_0

    .line 457
    :cond_2
    :try_start_3
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    move-object v3, p1

    .line 459
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 461
    new-instance p1, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {p1, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 464
    const/4 v4, 0x0

    :goto_3
    array-length v5, v1

    if-ge v4, v5, :cond_5

    .line 465
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 466
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v6

    if-nez v6, :cond_4

    .line 468
    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 464
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 470
    :catch_2
    move-exception v5

    const/4 v5, -0x1

    :try_start_5
    aput v5, v1, v4

    goto :goto_4

    .line 475
    :cond_5
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    move-object v4, v1

    .line 477
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 478
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {p1, v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 479
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 482
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 485
    const/4 v7, 0x0

    invoke-virtual {v1, p1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 487
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 488
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object v1, v0

    .line 489
    const/4 p1, 0x0

    move v8, p1

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    if-ge v8, p1, :cond_7

    .line 490
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 492
    iget-object v9, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 495
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_8
    add-int/lit8 p1, v8, 0x1

    move v8, p1

    goto :goto_5

    .line 499
    :cond_9
    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Lcom/keniu/security/traffic/z;->b(Z)Z

    move-result p1

    if-nez p1, :cond_a

    .line 500
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/keniu/security/traffic/f;

    goto/16 :goto_0

    .line 501
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 502
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 505
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    .line 508
    const/4 v7, 0x0

    .line 509
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keniu/security/traffic/f;

    .line 513
    if-nez p1, :cond_c

    const-string v8, "android.permission.INTERNET"

    iget-object v9, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_b

    .line 519
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cache.label."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 525
    invoke-static {v8}, Lcom/keniu/security/traffic/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 526
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_14

    .line 528
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 529
    invoke-static {v8, v7}, Lcom/keniu/security/traffic/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const/4 v8, 0x1

    move v13, v8

    move-object v8, v7

    move v7, v13

    .line 534
    :goto_7
    if-nez p1, :cond_12

    .line 535
    new-instance p1, Lcom/keniu/security/traffic/f;

    invoke-direct {p1}, Lcom/keniu/security/traffic/f;-><init>()V

    .line 536
    iget v9, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v9, p1, Lcom/keniu/security/traffic/f;->a:I

    .line 537
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    iput-object v9, p1, Lcom/keniu/security/traffic/f;->b:[Ljava/lang/String;

    .line 538
    iput-object p0, p1, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    .line 539
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p1, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    .line 540
    iget-object v8, p1, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p1, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, p1, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/keniu/security/traffic/z;->a(JILjava/lang/String;)Lcom/keniu/security/traffic/u;

    move-result-object v8

    .line 544
    if-eqz v8, :cond_11

    .line 545
    iget-wide v8, v8, Lcom/keniu/security/traffic/u;->a:J

    long-to-double v8, v8

    const-wide/high16 v10, 0x4130

    div-double/2addr v8, v10

    iput-wide v8, p1, Lcom/keniu/security/traffic/f;->m:D

    .line 549
    :goto_8
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v6, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, p1

    .line 557
    :goto_9
    iput-boolean v7, p0, Lcom/keniu/security/traffic/f;->j:Z

    .line 559
    iget-boolean p1, p0, Lcom/keniu/security/traffic/f;->c:Z

    if-nez p1, :cond_d

    iget p1, p0, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v3, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_d

    .line 561
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/keniu/security/traffic/f;->c:Z

    .line 563
    :cond_d
    iget-boolean p1, p0, Lcom/keniu/security/traffic/f;->d:Z

    if-nez p1, :cond_e

    iget p1, p0, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v4, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_e

    .line 565
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/keniu/security/traffic/f;->d:Z

    .line 567
    :cond_e
    invoke-static {}, Lcom/keniu/security/traffic/q;->a()Ljava/lang/String;

    move-result-object p1

    .line 568
    iget v7, p0, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 569
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/keniu/security/traffic/f;->k:Z

    .line 572
    :cond_f
    iget-object p1, p0, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.ijinshan.mguard"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.tencent.mm"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.tencent.mobileqq"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.UCMobile"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.google.android.gm"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.ijinshan.kbatterydoctor"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.ijinshan.duba"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.ijinshan.mPrivacy"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.android.mms"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/keniu/security/traffic/f;->g:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sina.weibo"

    invoke-virtual {p1, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_b

    .line 592
    :cond_10
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/keniu/security/traffic/f;->k:Z

    .line 593
    iget p0, p0, Lcom/keniu/security/traffic/f;->a:I

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/keniu/security/traffic/q;->c(IZ)V

    goto/16 :goto_6

    .line 547
    :cond_11
    const-wide/16 v8, 0x0

    iput-wide v8, p1, Lcom/keniu/security/traffic/f;->m:D

    goto/16 :goto_8

    .line 551
    :cond_12
    iget-object p0, p1, Lcom/keniu/security/traffic/f;->b:[Ljava/lang/String;

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    .line 552
    iget-object v9, p1, Lcom/keniu/security/traffic/f;->b:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/keniu/security/traffic/f;->b:[Ljava/lang/String;

    array-length v12, v12

    invoke-static {v9, v10, p0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    iget-object v9, p1, Lcom/keniu/security/traffic/f;->b:[Ljava/lang/String;

    array-length v9, v9

    aput-object v8, p0, v9

    .line 555
    iput-object p0, p1, Lcom/keniu/security/traffic/f;->b:[Ljava/lang/String;

    move-object p0, p1

    goto/16 :goto_9

    .line 597
    :cond_13
    invoke-virtual {v2}, Lcom/keniu/security/traffic/z;->a()V

    .line 598
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array p1, p1, [Lcom/keniu/security/traffic/f;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/keniu/security/traffic/f;

    .line 628
    sput-object p0, Lcom/keniu/security/traffic/e;->i:[Lcom/keniu/security/traffic/f;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :cond_14
    move-object v8, v9

    goto/16 :goto_7
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 409
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/keniu/security/traffic/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$ECHO $IPTABLES\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$IPTABLES -L -v -n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)I

    .line 412
    invoke-static {p0, v0}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Z)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    :try_start_0
    invoke-static {p0, p1}, Lcom/keniu/security/traffic/e;->e(Landroid/content/Context;Z)Z

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    invoke-static {p0}, Lcom/keniu/security/traffic/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v2, "$IPTABLES -F DROIDWALL\n$IPTABLES -F DROIDWALL_REJECT\n$IPTABLES -F DROIDWALL_MOBILE\n$IPTABLES -F DROIDWALL_WIFI\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)I

    move-result v1

    .line 387
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 388
    if-eqz p1, :cond_0

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error purging iptables. exit code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v4

    .line 397
    :goto_0
    return v0

    :cond_1
    move v0, v3

    .line 393
    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    if-eqz p1, :cond_2

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error purging iptables: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_2
    move v0, v4

    .line 397
    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 645
    sget-boolean v0, Lcom/keniu/security/traffic/e;->n:Z

    if-eqz v0, :cond_0

    move v0, v3

    .line 656
    :goto_0
    return v0

    .line 647
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    :try_start_0
    const-string v1, "exit 0"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)I

    move-result v0

    if-nez v0, :cond_1

    .line 651
    const/4 v0, 0x1

    sput-boolean v0, Lcom/keniu/security/traffic/e;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 652
    goto :goto_0

    :catch_0
    move-exception v0

    .line 656
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;Z)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 766
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "bin"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "iptables_armv5"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x307fc

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 771
    :cond_0
    const-string v1, "755"

    invoke-static {p0, v0, v1}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 775
    :catch_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 776
    const v0, 0x7f0b037d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 779
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "assertBinaries"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v5

    .line 780
    goto :goto_0
.end method
