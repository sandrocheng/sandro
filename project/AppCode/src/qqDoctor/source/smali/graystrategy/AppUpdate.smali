.class public final Lgraystrategy/AppUpdate;
.super Lcom/qq/taf/jce/JceStruct;
.source "AppUpdate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public descriptioin:Ljava/lang/String;

.field public detailUrl:Ljava/lang/String;

.field public registerUrl:Ljava/lang/String;

.field public releaseTime:J

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lgraystrategy/AppUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lgraystrategy/AppUpdate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/AppUpdate;->versionName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/AppUpdate;->descriptioin:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/AppUpdate;->detailUrl:Ljava/lang/String;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgraystrategy/AppUpdate;->releaseTime:J

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/AppUpdate;->registerUrl:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lgraystrategy/AppUpdate;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgraystrategy/AppUpdate;->setVersionName(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lgraystrategy/AppUpdate;->descriptioin:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgraystrategy/AppUpdate;->setDescriptioin(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lgraystrategy/AppUpdate;->detailUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgraystrategy/AppUpdate;->setDetailUrl(Ljava/lang/String;)V

    .line 86
    iget-wide v0, p0, Lgraystrategy/AppUpdate;->releaseTime:J

    invoke-virtual {p0, v0, v1}, Lgraystrategy/AppUpdate;->setReleaseTime(J)V

    .line 87
    iget-object v0, p0, Lgraystrategy/AppUpdate;->registerUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgraystrategy/AppUpdate;->setRegisterUrl(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/AppUpdate;->versionName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/AppUpdate;->descriptioin:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/AppUpdate;->detailUrl:Ljava/lang/String;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgraystrategy/AppUpdate;->releaseTime:J

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/AppUpdate;->registerUrl:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p1}, Lgraystrategy/AppUpdate;->setVersionName(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p2}, Lgraystrategy/AppUpdate;->setDescriptioin(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p3}, Lgraystrategy/AppUpdate;->setDetailUrl(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p4, p5}, Lgraystrategy/AppUpdate;->setReleaseTime(J)V

    .line 96
    invoke-virtual {p0, p6}, Lgraystrategy/AppUpdate;->setRegisterUrl(Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "graystrategy.AppUpdate"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 132
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :cond_0
    return-object v0

    .line 136
    :catch_0
    move-exception v1

    sget-boolean v1, Lgraystrategy/AppUpdate;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 170
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 171
    iget-object v1, p0, Lgraystrategy/AppUpdate;->versionName:Ljava/lang/String;

    const-string v2, "versionName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 172
    iget-object v1, p0, Lgraystrategy/AppUpdate;->descriptioin:Ljava/lang/String;

    const-string v2, "descriptioin"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 173
    iget-object v1, p0, Lgraystrategy/AppUpdate;->detailUrl:Ljava/lang/String;

    const-string v2, "detailUrl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 174
    iget-wide v1, p0, Lgraystrategy/AppUpdate;->releaseTime:J

    const-string v3, "releaseTime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 175
    iget-object v1, p0, Lgraystrategy/AppUpdate;->registerUrl:Ljava/lang/String;

    const-string v2, "registerUrl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 176
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    check-cast p1, Lgraystrategy/AppUpdate;

    .line 108
    iget-object v1, p0, Lgraystrategy/AppUpdate;->versionName:Ljava/lang/String;

    iget-object v2, p1, Lgraystrategy/AppUpdate;->versionName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lgraystrategy/AppUpdate;->descriptioin:Ljava/lang/String;

    iget-object v2, p1, Lgraystrategy/AppUpdate;->descriptioin:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lgraystrategy/AppUpdate;->detailUrl:Ljava/lang/String;

    iget-object v2, p1, Lgraystrategy/AppUpdate;->detailUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-wide v1, p0, Lgraystrategy/AppUpdate;->releaseTime:J

    iget-wide v3, p1, Lgraystrategy/AppUpdate;->releaseTime:J

    invoke-static {v1, v2, v3, v4}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lgraystrategy/AppUpdate;->registerUrl:Ljava/lang/String;

    iget-object v2, p1, Lgraystrategy/AppUpdate;->registerUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "graystrategy.AppUpdate"

    return-object v0
.end method

.method public final getDescriptioin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lgraystrategy/AppUpdate;->descriptioin:Ljava/lang/String;

    return-object v0
.end method

.method public final getDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lgraystrategy/AppUpdate;->detailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegisterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lgraystrategy/AppUpdate;->registerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getReleaseTime()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lgraystrategy/AppUpdate;->releaseTime:J

    return-wide v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lgraystrategy/AppUpdate;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 119
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 156
    invoke-virtual {p1, v4, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgraystrategy/AppUpdate;->versionName:Ljava/lang/String;

    .line 158
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgraystrategy/AppUpdate;->descriptioin:Ljava/lang/String;

    .line 160
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgraystrategy/AppUpdate;->detailUrl:Ljava/lang/String;

    .line 162
    iget-wide v0, p0, Lgraystrategy/AppUpdate;->releaseTime:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lgraystrategy/AppUpdate;->releaseTime:J

    .line 164
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgraystrategy/AppUpdate;->registerUrl:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public final setDescriptioin(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lgraystrategy/AppUpdate;->descriptioin:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public final setDetailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lgraystrategy/AppUpdate;->detailUrl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public final setRegisterUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lgraystrategy/AppUpdate;->registerUrl:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public final setReleaseTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-wide p1, p0, Lgraystrategy/AppUpdate;->releaseTime:J

    .line 69
    return-void
.end method

.method public final setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lgraystrategy/AppUpdate;->versionName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lgraystrategy/AppUpdate;->versionName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 144
    iget-object v0, p0, Lgraystrategy/AppUpdate;->descriptioin:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, Lgraystrategy/AppUpdate;->detailUrl:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 146
    iget-wide v0, p0, Lgraystrategy/AppUpdate;->releaseTime:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 147
    iget-object v0, p0, Lgraystrategy/AppUpdate;->registerUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lgraystrategy/AppUpdate;->registerUrl:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 151
    :cond_0
    return-void
.end method
