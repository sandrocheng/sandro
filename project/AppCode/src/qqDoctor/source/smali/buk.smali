.class final Lbuk;
.super Lbuh$a;


# instance fields
.field final synthetic g:Lbuj$a;

.field private final synthetic h:I


# direct methods
.method constructor <init>(Lbuj$a;I)V
    .locals 0

    iput-object p1, p0, Lbuk;->g:Lbuj$a;

    iput p2, p0, Lbuk;->h:I

    invoke-direct {p0}, Lbuh$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lbuh$a;->b:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    move v1, v2

    :goto_0
    iget v4, p0, Lbuk;->h:I

    sparse-switch v4, :sswitch_data_0

    :goto_1
    :sswitch_0
    if-nez v0, :cond_1

    iget v4, p0, Lbuk;->h:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    :goto_2
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lbuk;->g:Lbuj$a;

    invoke-static {v0}, Lbuj$a;->a(Lbuj$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lbuk;->g:Lbuj$a;

    invoke-static {v0}, Lbuj$a;->b(Lbuj$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lbuk;->g:Lbuj$a;

    invoke-static {v0}, Lbuj$a;->c(Lbuj$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, Lbuk;->g:Lbuj$a;

    invoke-static {v0}, Lbuj$a;->d(Lbuj$a;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v0

    goto :goto_1

    :sswitch_5
    iget-object v0, p0, Lbuk;->g:Lbuj$a;

    invoke-static {v0}, Lbuj$a;->e(Lbuj$a;)Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    move-result-object v0

    goto :goto_1

    :cond_1
    instance-of v2, v0, Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    iget-object v2, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/tencent/tmsecure/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v0

    and-int v2, v1, v0

    goto :goto_2

    :cond_2
    instance-of v2, v0, Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    iget-object v2, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;->contains(Ljava/lang/String;)Z

    move-result v0

    and-int v2, v1, v0

    goto :goto_2

    :cond_3
    instance-of v2, v0, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    iget-object v2, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->contains(Ljava/lang/String;)Z

    move-result v0

    and-int v2, v1, v0

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method final b()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    iget-object v1, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iget-object v1, p0, Lbuh$a;->d:[Ljava/lang/Object;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    iget v1, p0, Lbuh$a;->b:I

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    iget v1, p0, Lbuh$a;->e:I

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    iget v1, p0, Lbuh$a;->b:I

    if-eqz v1, :cond_0

    iget v1, p0, Lbuh$a;->b:I

    if-ne v1, v2, :cond_0

    iput-boolean v2, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->isBlocked:Z

    iget-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    new-instance v2, Lbul;

    invoke-direct {v2, p0}, Lbul;-><init>(Lbuk;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-object v0, p0, Lbuh$a;->c:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    return-void
.end method
