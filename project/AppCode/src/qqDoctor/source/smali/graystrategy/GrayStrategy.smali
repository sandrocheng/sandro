.class public final Lgraystrategy/GrayStrategy;
.super Lcom/qq/taf/jce/JceStruct;
.source "GrayStrategy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_appUpdate:Lgraystrategy/AppUpdate;

.field static cache_userAgreement:Lgraystrategy/UserAgreement;


# instance fields
.field public appAuthResult:Z

.field public appUpdate:Lgraystrategy/AppUpdate;

.field public registerUrl:Ljava/lang/String;

.field public resCode:I

.field public resMsg:Ljava/lang/String;

.field public reserved:Ljava/lang/String;

.field public useAuthResult:Z

.field public userAgreement:Lgraystrategy/UserAgreement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lgraystrategy/GrayStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lgraystrategy/GrayStrategy;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 117
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-boolean v0, p0, Lgraystrategy/GrayStrategy;->appAuthResult:Z

    .line 23
    iput-boolean v0, p0, Lgraystrategy/GrayStrategy;->useAuthResult:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lgraystrategy/GrayStrategy;->resCode:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/GrayStrategy;->resMsg:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/GrayStrategy;->registerUrl:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lgraystrategy/GrayStrategy;->userAgreement:Lgraystrategy/UserAgreement;

    .line 33
    iput-object v1, p0, Lgraystrategy/GrayStrategy;->appUpdate:Lgraystrategy/AppUpdate;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/GrayStrategy;->reserved:Ljava/lang/String;

    .line 119
    iget-boolean v0, p0, Lgraystrategy/GrayStrategy;->appAuthResult:Z

    invoke-virtual {p0, v0}, Lgraystrategy/GrayStrategy;->setAppAuthResult(Z)V

    .line 120
    iget-boolean v0, p0, Lgraystrategy/GrayStrategy;->useAuthResult:Z

    invoke-virtual {p0, v0}, Lgraystrategy/GrayStrategy;->setUseAuthResult(Z)V

    .line 121
    iget v0, p0, Lgraystrategy/GrayStrategy;->resCode:I

    invoke-virtual {p0, v0}, Lgraystrategy/GrayStrategy;->setResCode(I)V

    .line 122
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->resMsg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgraystrategy/GrayStrategy;->setResMsg(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->registerUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgraystrategy/GrayStrategy;->setRegisterUrl(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->userAgreement:Lgraystrategy/UserAgreement;

    invoke-virtual {p0, v0}, Lgraystrategy/GrayStrategy;->setUserAgreement(Lgraystrategy/UserAgreement;)V

    .line 125
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->appUpdate:Lgraystrategy/AppUpdate;

    invoke-virtual {p0, v0}, Lgraystrategy/GrayStrategy;->setAppUpdate(Lgraystrategy/AppUpdate;)V

    .line 126
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->reserved:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgraystrategy/GrayStrategy;->setReserved(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>(ZZILjava/lang/String;Ljava/lang/String;Lgraystrategy/UserAgreement;Lgraystrategy/AppUpdate;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 129
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-boolean v0, p0, Lgraystrategy/GrayStrategy;->appAuthResult:Z

    .line 23
    iput-boolean v0, p0, Lgraystrategy/GrayStrategy;->useAuthResult:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lgraystrategy/GrayStrategy;->resCode:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/GrayStrategy;->resMsg:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/GrayStrategy;->registerUrl:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lgraystrategy/GrayStrategy;->userAgreement:Lgraystrategy/UserAgreement;

    .line 33
    iput-object v1, p0, Lgraystrategy/GrayStrategy;->appUpdate:Lgraystrategy/AppUpdate;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/GrayStrategy;->reserved:Ljava/lang/String;

    .line 131
    invoke-virtual {p0, p1}, Lgraystrategy/GrayStrategy;->setAppAuthResult(Z)V

    .line 132
    invoke-virtual {p0, p2}, Lgraystrategy/GrayStrategy;->setUseAuthResult(Z)V

    .line 133
    invoke-virtual {p0, p3}, Lgraystrategy/GrayStrategy;->setResCode(I)V

    .line 134
    invoke-virtual {p0, p4}, Lgraystrategy/GrayStrategy;->setResMsg(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p5}, Lgraystrategy/GrayStrategy;->setRegisterUrl(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p6}, Lgraystrategy/GrayStrategy;->setUserAgreement(Lgraystrategy/UserAgreement;)V

    .line 137
    invoke-virtual {p0, p7}, Lgraystrategy/GrayStrategy;->setAppUpdate(Lgraystrategy/AppUpdate;)V

    .line 138
    invoke-virtual {p0, p8}, Lgraystrategy/GrayStrategy;->setReserved(Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "graystrategy.GrayStrategy"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 177
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    :cond_0
    return-object v0

    .line 181
    :catch_0
    move-exception v1

    sget-boolean v1, Lgraystrategy/GrayStrategy;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 243
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 244
    iget-boolean v1, p0, Lgraystrategy/GrayStrategy;->appAuthResult:Z

    const-string v2, "appAuthResult"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 245
    iget-boolean v1, p0, Lgraystrategy/GrayStrategy;->useAuthResult:Z

    const-string v2, "useAuthResult"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 246
    iget v1, p0, Lgraystrategy/GrayStrategy;->resCode:I

    const-string v2, "resCode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 247
    iget-object v1, p0, Lgraystrategy/GrayStrategy;->resMsg:Ljava/lang/String;

    const-string v2, "resMsg"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 248
    iget-object v1, p0, Lgraystrategy/GrayStrategy;->registerUrl:Ljava/lang/String;

    const-string v2, "registerUrl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 249
    iget-object v1, p0, Lgraystrategy/GrayStrategy;->userAgreement:Lgraystrategy/UserAgreement;

    const-string v2, "userAgreement"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 250
    iget-object v1, p0, Lgraystrategy/GrayStrategy;->appUpdate:Lgraystrategy/AppUpdate;

    const-string v2, "appUpdate"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 251
    iget-object v1, p0, Lgraystrategy/GrayStrategy;->reserved:Ljava/lang/String;

    const-string v2, "reserved"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 252
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    check-cast p1, Lgraystrategy/GrayStrategy;

    .line 150
    iget-boolean v1, p0, Lgraystrategy/GrayStrategy;->appAuthResult:Z

    iget-boolean v2, p1, Lgraystrategy/GrayStrategy;->appAuthResult:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-boolean v1, p0, Lgraystrategy/GrayStrategy;->useAuthResult:Z

    iget-boolean v2, p1, Lgraystrategy/GrayStrategy;->useAuthResult:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget v1, p0, Lgraystrategy/GrayStrategy;->resCode:I

    iget v2, p1, Lgraystrategy/GrayStrategy;->resCode:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lgraystrategy/GrayStrategy;->resMsg:Ljava/lang/String;

    iget-object v2, p1, Lgraystrategy/GrayStrategy;->resMsg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lgraystrategy/GrayStrategy;->registerUrl:Ljava/lang/String;

    iget-object v2, p1, Lgraystrategy/GrayStrategy;->registerUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lgraystrategy/GrayStrategy;->userAgreement:Lgraystrategy/UserAgreement;

    iget-object v2, p1, Lgraystrategy/GrayStrategy;->userAgreement:Lgraystrategy/UserAgreement;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lgraystrategy/GrayStrategy;->appUpdate:Lgraystrategy/AppUpdate;

    iget-object v2, p1, Lgraystrategy/GrayStrategy;->appUpdate:Lgraystrategy/AppUpdate;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lgraystrategy/GrayStrategy;->reserved:Ljava/lang/String;

    iget-object v2, p1, Lgraystrategy/GrayStrategy;->reserved:Ljava/lang/String;

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
    const-string v0, "graystrategy.GrayStrategy"

    return-object v0
.end method

.method public final getAppAuthResult()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lgraystrategy/GrayStrategy;->appAuthResult:Z

    return v0
.end method

.method public final getAppUpdate()Lgraystrategy/AppUpdate;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->appUpdate:Lgraystrategy/AppUpdate;

    return-object v0
.end method

.method public final getRegisterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->registerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getResCode()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lgraystrategy/GrayStrategy;->resCode:I

    return v0
.end method

.method public final getResMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->resMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final getReserved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public final getUseAuthResult()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lgraystrategy/GrayStrategy;->useAuthResult:Z

    return v0
.end method

.method public final getUserAgreement()Lgraystrategy/UserAgreement;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->userAgreement:Lgraystrategy/UserAgreement;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 164
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    iget-boolean v0, p0, Lgraystrategy/GrayStrategy;->appAuthResult:Z

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lgraystrategy/GrayStrategy;->appAuthResult:Z

    .line 217
    iget-boolean v0, p0, Lgraystrategy/GrayStrategy;->useAuthResult:Z

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lgraystrategy/GrayStrategy;->useAuthResult:Z

    .line 219
    iget v0, p0, Lgraystrategy/GrayStrategy;->resCode:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lgraystrategy/GrayStrategy;->resCode:I

    .line 221
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgraystrategy/GrayStrategy;->resMsg:Ljava/lang/String;

    .line 223
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgraystrategy/GrayStrategy;->registerUrl:Ljava/lang/String;

    .line 225
    sget-object v0, Lgraystrategy/GrayStrategy;->cache_userAgreement:Lgraystrategy/UserAgreement;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lgraystrategy/UserAgreement;

    invoke-direct {v0}, Lgraystrategy/UserAgreement;-><init>()V

    sput-object v0, Lgraystrategy/GrayStrategy;->cache_userAgreement:Lgraystrategy/UserAgreement;

    .line 229
    :cond_0
    sget-object v0, Lgraystrategy/GrayStrategy;->cache_userAgreement:Lgraystrategy/UserAgreement;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lgraystrategy/UserAgreement;

    iput-object v0, p0, Lgraystrategy/GrayStrategy;->userAgreement:Lgraystrategy/UserAgreement;

    .line 231
    sget-object v0, Lgraystrategy/GrayStrategy;->cache_appUpdate:Lgraystrategy/AppUpdate;

    if-nez v0, :cond_1

    .line 233
    new-instance v0, Lgraystrategy/AppUpdate;

    invoke-direct {v0}, Lgraystrategy/AppUpdate;-><init>()V

    sput-object v0, Lgraystrategy/GrayStrategy;->cache_appUpdate:Lgraystrategy/AppUpdate;

    .line 235
    :cond_1
    sget-object v0, Lgraystrategy/GrayStrategy;->cache_appUpdate:Lgraystrategy/AppUpdate;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lgraystrategy/AppUpdate;

    iput-object v0, p0, Lgraystrategy/GrayStrategy;->appUpdate:Lgraystrategy/AppUpdate;

    .line 237
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgraystrategy/GrayStrategy;->reserved:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public final setAppAuthResult(Z)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lgraystrategy/GrayStrategy;->appAuthResult:Z

    .line 45
    return-void
.end method

.method public final setAppUpdate(Lgraystrategy/AppUpdate;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lgraystrategy/GrayStrategy;->appUpdate:Lgraystrategy/AppUpdate;

    .line 105
    return-void
.end method

.method public final setRegisterUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lgraystrategy/GrayStrategy;->registerUrl:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public final setResCode(I)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lgraystrategy/GrayStrategy;->resCode:I

    .line 65
    return-void
.end method

.method public final setResMsg(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lgraystrategy/GrayStrategy;->resMsg:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public final setReserved(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lgraystrategy/GrayStrategy;->reserved:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public final setUseAuthResult(Z)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lgraystrategy/GrayStrategy;->useAuthResult:Z

    .line 55
    return-void
.end method

.method public final setUserAgreement(Lgraystrategy/UserAgreement;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lgraystrategy/GrayStrategy;->userAgreement:Lgraystrategy/UserAgreement;

    .line 95
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 188
    iget-boolean v0, p0, Lgraystrategy/GrayStrategy;->appAuthResult:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 189
    iget-boolean v0, p0, Lgraystrategy/GrayStrategy;->useAuthResult:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 190
    iget v0, p0, Lgraystrategy/GrayStrategy;->resCode:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 191
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->resMsg:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 192
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->registerUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->registerUrl:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 196
    :cond_0
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->userAgreement:Lgraystrategy/UserAgreement;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->userAgreement:Lgraystrategy/UserAgreement;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 200
    :cond_1
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->appUpdate:Lgraystrategy/AppUpdate;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->appUpdate:Lgraystrategy/AppUpdate;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 204
    :cond_2
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->reserved:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lgraystrategy/GrayStrategy;->reserved:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 208
    :cond_3
    return-void
.end method
