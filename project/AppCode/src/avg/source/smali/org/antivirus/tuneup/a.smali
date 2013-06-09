.class public final Lorg/antivirus/tuneup/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/antivirus/tuneup/a;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/antivirus/tuneup/a;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/antivirus/tuneup/a;->a:I

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/antivirus/tuneup/a;->a:I

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lorg/antivirus/tuneup/a;->a:I

    return-void
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x1

    check-cast p1, Lorg/antivirus/ui/InstalledApp;

    check-cast p2, Lorg/antivirus/ui/InstalledApp;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    iget v2, p0, Lorg/antivirus/tuneup/a;->a:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-wide v0, p1, Lorg/antivirus/ui/InstalledApp;->apkSize:J

    iget-wide v2, p2, Lorg/antivirus/ui/InstalledApp;->apkSize:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :pswitch_1
    iget-wide v0, p1, Lorg/antivirus/ui/InstalledApp;->apkSize:J

    iget-wide v2, p2, Lorg/antivirus/ui/InstalledApp;->apkSize:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :pswitch_2
    iget-wide v0, p2, Lorg/antivirus/ui/InstalledApp;->apkSize:J

    iget-wide v2, p1, Lorg/antivirus/ui/InstalledApp;->apkSize:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1, v4}, Ljava/text/Collator;->setStrength(I)V

    iget-object v0, p1, Lorg/antivirus/ui/InstalledApp;->mAppName:Ljava/lang/String;

    iget-object v2, p2, Lorg/antivirus/ui/InstalledApp;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {v1, v4}, Ljava/text/Collator;->setStrength(I)V

    iget-object v0, p2, Lorg/antivirus/ui/InstalledApp;->mAppName:Ljava/lang/String;

    iget-object v2, p1, Lorg/antivirus/ui/InstalledApp;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_5
    iget-byte v2, p1, Lorg/antivirus/ui/InstalledApp;->movable:B

    iget-byte v1, p2, Lorg/antivirus/ui/InstalledApp;->movable:B

    if-eq v2, v3, :cond_0

    move v2, v0

    :cond_0
    if-eq v1, v3, :cond_3

    :goto_1
    sub-int/2addr v0, v2

    goto :goto_0

    :pswitch_6
    iget-byte v2, p1, Lorg/antivirus/ui/InstalledApp;->movable:B

    iget-byte v1, p2, Lorg/antivirus/ui/InstalledApp;->movable:B

    if-eq v2, v3, :cond_1

    move v2, v0

    :cond_1
    if-eq v1, v3, :cond_2

    :goto_2
    sub-int v0, v2, v0

    goto :goto_0

    :pswitch_7
    iget-wide v0, p2, Lorg/antivirus/ui/InstalledApp;->inTraffic:J

    iget-wide v2, p2, Lorg/antivirus/ui/InstalledApp;->outTraffic:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lorg/antivirus/ui/InstalledApp;->inTraffic:J

    iget-wide v4, p1, Lorg/antivirus/ui/InstalledApp;->outTraffic:J

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
