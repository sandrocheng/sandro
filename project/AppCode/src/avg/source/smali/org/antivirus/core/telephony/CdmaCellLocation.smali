.class public Lorg/antivirus/core/telephony/CdmaCellLocation;
.super Landroid/telephony/CellLocation;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->a:I

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->b:I

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->c:I

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->a:I

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->b:I

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->a:I

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->b:I

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->c:I

    const-string v0, "baseStationId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->a:I

    const-string v0, "baseStationLatitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->b:I

    const-string v0, "baseStationLongitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->c:I

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/antivirus/core/telephony/CdmaCellLocation;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_0

    :cond_0
    iget v3, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lorg/antivirus/core/telephony/CdmaCellLocation;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/antivirus/core/telephony/CdmaCellLocation;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lorg/antivirus/core/telephony/CdmaCellLocation;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/antivirus/core/telephony/CdmaCellLocation;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v1, Lorg/antivirus/core/telephony/CdmaCellLocation;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/antivirus/core/telephony/CdmaCellLocation;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "baseStationId"

    iget v1, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "baseStationLatitude"

    iget v1, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "baseStationLongitude"

    iget v1, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public getBaseStationId()I
    .locals 1

    iget v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->a:I

    return v0
.end method

.method public getBaseStationLatitude()I
    .locals 1

    iget v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->b:I

    return v0
.end method

.method public getBaseStationLongitude()I
    .locals 1

    iget v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->c:I

    return v0
.end method

.method public setCellLocationData(III)V
    .locals 0

    iput p1, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->a:I

    iput p2, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->b:I

    iput p3, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->c:I

    return-void
.end method

.method public setStateInvalid()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->a:I

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->b:I

    iput v0, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/antivirus/core/telephony/CdmaCellLocation;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
