.class public final Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)V
    .locals 2

    iget-object v0, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->a:Ljava/lang/String;

    return-void
.end method

.method public final setNamePhoneNumber(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)V
    .locals 1

    iget-object v0, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->b:Ljava/lang/String;

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->b:Ljava/lang/String;

    return-void
.end method
