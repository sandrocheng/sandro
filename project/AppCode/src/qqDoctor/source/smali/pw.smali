.class public final Lpw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;


# instance fields
.field private a:Lov;

.field private b:Lhh;

.field private c:Lho;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iput-object v0, p0, Lpw;->a:Lov;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lpw;->c:Lho;

    invoke-static {}, Lhh;->a()Lhh;

    move-result-object v0

    iput-object v0, p0, Lpw;->b:Lhh;

    return-void
.end method


# virtual methods
.method public final varargs onCallback(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;II[Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    instance-of v0, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget v0, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lpw;->c:Lho;

    iget-object v1, p0, Lpw;->c:Lho;

    invoke-virtual {v1}, Lho;->N()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lho;->h(I)V

    iget-object v0, p0, Lpw;->a:Lov;

    invoke-virtual {v0, p1}, Lov;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V

    goto :goto_0

    :cond_2
    if-ne p3, v2, :cond_0

    iget-object v0, p0, Lpw;->c:Lho;

    iget-object v1, p0, Lpw;->c:Lho;

    invoke-virtual {v1}, Lho;->G()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lho;->d(I)V

    iget-object v0, p0, Lpw;->c:Lho;

    iget-object v1, p0, Lpw;->c:Lho;

    invoke-virtual {v1}, Lho;->L()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lho;->f(I)V

    iget-object v0, p0, Lpw;->a:Lov;

    invoke-virtual {v0, v2, p1}, Lov;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lpw;->b:Lhh;

    invoke-virtual {v1}, Lhh;->e()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lpw;->c:Lho;

    invoke-virtual {v1}, Lho;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpw;->c:Lho;

    invoke-virtual {v1}, Lho;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Lgu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
