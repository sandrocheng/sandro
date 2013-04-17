.class public Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;
.super Ljava/lang/Object;


# instance fields
.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->number:Ljava/lang/String;

    :cond_0
    return-void
.end method
