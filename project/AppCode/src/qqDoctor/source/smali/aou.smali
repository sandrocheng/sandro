.class public final Laou;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laou$a;
    }
.end annotation


# instance fields
.field private A:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private B:Landroid/os/Handler;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Ljava/lang/Runnable;

.field private F:Landroid/view/View$OnClickListener;

.field private a:Lho;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/EditText;

.field private d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private k:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Laou$a;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Ljava/lang/Thread;

.field private y:Z

.field private z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0300cf

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Laou$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laou$a;-><init>(B)V

    iput-object v0, p0, Laou;->t:Laou$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laou;->z:Ljava/lang/Object;

    new-instance v0, Laov;

    invoke-direct {v0, p0}, Laov;-><init>(Laou;)V

    iput-object v0, p0, Laou;->B:Landroid/os/Handler;

    new-instance v0, Laow;

    invoke-direct {v0, p0}, Laow;-><init>(Laou;)V

    iput-object v0, p0, Laou;->C:Landroid/view/View$OnClickListener;

    new-instance v0, Laox;

    invoke-direct {v0, p0}, Laox;-><init>(Laou;)V

    iput-object v0, p0, Laou;->D:Landroid/view/View$OnClickListener;

    new-instance v0, Laoy;

    invoke-direct {v0, p0}, Laoy;-><init>(Laou;)V

    iput-object v0, p0, Laou;->E:Ljava/lang/Runnable;

    new-instance v0, Laoz;

    invoke-direct {v0, p0}, Laoz;-><init>(Laou;)V

    iput-object v0, p0, Laou;->F:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic A(Laou;)Z
    .locals 1

    iget-boolean v0, p0, Laou;->m:Z

    return v0
.end method

.method static synthetic B(Laou;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laou;->B:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic C(Laou;)Z
    .locals 1

    iget-boolean v0, p0, Laou;->l:Z

    return v0
.end method

.method static synthetic D(Laou;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Laou;->x:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic E(Laou;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laou;->y:Z

    return v0
.end method

.method static synthetic F(Laou;)I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Laou;->o:I

    return v0
.end method

.method static synthetic G(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic H(Laou;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Laou;->E:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic I(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    iget-object v5, p0, Laou;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-wide v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lj;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Laou;->B:Landroid/os/Handler;

    const/16 v1, 0x257

    iget-object v2, p0, Laou;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0abc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, -0x1

    :goto_1
    return v1

    :cond_0
    const-string v1, "http://ticannon.3g.qq.com/g/api"

    invoke-static {v1, v0}, Lj;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lj;->c([B)Lo;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lo;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lo;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->f:Ljava/lang/String;

    iput-object v0, p0, Laou;->p:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->g:Ljava/lang/String;

    iput-object v0, p0, Laou;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laou;->m:Z

    iput p6, p0, Laou;->o:I

    iget-object v0, p0, Laou;->B:Landroid/os/Handler;

    const/16 v1, 0xc8

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :goto_2
    :sswitch_0
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0xce

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :sswitch_1
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0xd0

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->d:Ljava/lang/String;

    iput-object v0, p0, Laou;->r:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->e:Ljava/lang/String;

    iput-object v0, p0, Laou;->s:Ljava/lang/String;

    iget-object v0, p0, Laou;->B:Landroid/os/Handler;

    const/16 v1, 0xcf

    iget-object v2, p0, Laou;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0aaf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    move v1, v0

    :sswitch_3
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0xc9

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :sswitch_4
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0xca

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :sswitch_5
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0xcb

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :sswitch_6
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0xcc

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :sswitch_7
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0xcd

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0xc9

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo;

    iget-object v0, v0, Lo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_0
        -0xa -> :sswitch_7
        -0x4 -> :sswitch_6
        -0x1 -> :sswitch_5
        0x65 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xcb -> :sswitch_4
        0xd1 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Laou;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/16 v8, 0x12d

    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, -0x1

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-boolean v3, p0, Laou;->m:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Laou;->p:Ljava/lang/String;

    iget-object v5, p0, Laou;->q:Ljava/lang/String;

    iget-object v7, p0, Laou;->v:Ljava/lang/String;

    invoke-static {v3, v5, v7}, Lj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    const-string v5, "http://ticannon.3g.qq.com/g/api"

    invoke-static {v5, v3}, Lj;->a(Ljava/lang/String;[B)[B

    move-result-object v3

    invoke-static {v3}, Lj;->d([B)Lm;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v5, v3, Lm;->a:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v3, Lm;->b:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move v3, v0

    :goto_0
    if-ne v3, v1, :cond_1

    iget-object v0, p0, Laou;->B:Landroid/os/Handler;

    const/16 v2, 0x257

    iget-object v3, p0, Laou;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0abc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move v3, v2

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    iget-object v1, p0, Laou;->B:Landroid/os/Handler;

    const/16 v2, 0x12c

    iget-object v3, p0, Laou;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0ac0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput v6, p0, Laou;->o:I

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm;

    iget-object v0, v0, Lm;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_3

    iput-boolean v2, p0, Laou;->m:Z

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm;

    iget-object v0, v0, Lm;->d:Ljava/lang/String;

    iput-object v0, p0, Laou;->r:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm;

    iget-object v0, v0, Lm;->e:Ljava/lang/String;

    iput-object v0, p0, Laou;->s:Ljava/lang/String;

    iget-object v0, p0, Laou;->B:Landroid/os/Handler;

    const/16 v1, 0x131

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm;

    iget-object v0, v0, Lm;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm;

    iget-object v0, v0, Lm;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    :pswitch_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm;

    iget-object v0, v0, Lm;->c:Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto/16 :goto_1

    :pswitch_2
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0x12e

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm;

    iget-object v0, v0, Lm;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto/16 :goto_1

    :pswitch_3
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0x130

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm;

    iget-object v0, v0, Lm;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_4
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm;

    iget-object v0, v0, Lm;->c:Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Laou;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_1

    :cond_6
    move v3, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Laou;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-boolean v0, p0, Laou;->m:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    move-wide v0, p1

    move-object v2, p3

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lj;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Laou;->B:Landroid/os/Handler;

    const/16 v1, 0x257

    iget-object v2, p0, Laou;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0abc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    const-string v1, "http://ticannon.3g.qq.com/g/api"

    invoke-static {v1, v0}, Lj;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lj;->b([B)Ll;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Ll;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Ll;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    const/4 v0, 0x2

    iput v0, p0, Laou;->o:I

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->f:Ljava/lang/String;

    iput-object v0, p0, Laou;->p:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->g:Ljava/lang/String;

    iput-object v0, p0, Laou;->q:Ljava/lang/String;

    iget-object v0, p0, Laou;->B:Landroid/os/Handler;

    const/16 v1, 0x64

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_2
    move v0, v1

    goto :goto_1

    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Laou;->m:Z

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->d:Ljava/lang/String;

    iput-object v0, p0, Laou;->r:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->e:Ljava/lang/String;

    iput-object v0, p0, Laou;->s:Ljava/lang/String;

    iget-object v1, p0, Laou;->B:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_1
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto/16 :goto_1

    :sswitch_2
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto/16 :goto_1

    :sswitch_3
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto/16 :goto_1

    :sswitch_4
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :sswitch_5
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :sswitch_6
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll;

    iget-object v0, v0, Ll;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Laou;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_6
        -0xa -> :sswitch_5
        -0x4 -> :sswitch_4
        -0x1 -> :sswitch_3
        0x65 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xcb -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    const/high16 v0, 0x4000

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v4, v5, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p0
.end method

.method static synthetic a(Laou;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 0

    iput-object p1, p0, Laou;->A:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object p1
.end method

.method static synthetic a(Laou;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Laou;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laou;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Laou;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Laou;->x:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Laou;Laou$a;)V
    .locals 4

    iget-wide v0, p1, Laou$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Laou;->a:Lho;

    iget-wide v1, p1, Laou$a;->a:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lho;->E(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laou;->a:Lho;

    iget-object v1, p1, Laou$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lho;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Laou;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080037

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laou;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Laou;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Laou;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080038

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<u>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Laou;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0aae

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lapb;

    invoke-direct {v2, p0}, Lapb;-><init>(Laou;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080039

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Lape;

    invoke-direct {v2, p0, p1}, Lape;-><init>(Laou;Ljava/lang/String;)V

    invoke-virtual {v2}, Lape;->start()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, p0, Laou;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Laou;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0aab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0b0045

    new-instance v3, Lapc;

    invoke-direct {v3, p0, v0, v2}, Lapc;-><init>(Laou;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lapd;

    invoke-direct {v1, p0, v2}, Lapd;-><init>(Laou;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method private a(Laou$a;)Z
    .locals 5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Laou;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Laou;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v1, p0, Laou;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0ab8

    invoke-static {v1, v2}, Lha;->a(Landroid/content/Context;I)V

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Laou;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "@"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_1
    if-ne v2, v1, :cond_4

    iget-object v1, p0, Laou;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0ab9

    invoke-static {v1, v2}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const-string v2, "\\d*"

    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    goto :goto_1

    :cond_4
    if-ne v2, v3, :cond_6

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p1, Laou$a;->a:J

    :goto_2
    iget-object v2, p0, Laou;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Laou;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v1, p0, Laou;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0aba

    invoke-static {v1, v2}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_6
    iput-object v4, p1, Laou$a;->b:Ljava/lang/String;

    goto :goto_2

    :cond_7
    :try_start_0
    iget-object v2, p0, Laou;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lj;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Laou$a;->c:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Laou;)Z
    .locals 1

    iget-boolean v0, p0, Laou;->y:Z

    return v0
.end method

.method static synthetic a(Laou;Z)Z
    .locals 0

    iput-boolean p1, p0, Laou;->l:Z

    return p1
.end method

.method static synthetic b(Laou;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/16 v8, 0x191

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v3, p0, Laou;->j:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Laou;->m:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Laou;->p:Ljava/lang/String;

    iget-object v5, p0, Laou;->q:Ljava/lang/String;

    const-string v7, "qqsecure"

    invoke-static {v3, v5, v0, v7}, Lj;->a(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)[B

    move-result-object v3

    const-string v5, "http://ticannon.3g.qq.com/g/api"

    invoke-static {v5, v3}, Lj;->a(Ljava/lang/String;[B)[B

    move-result-object v3

    invoke-static {v3}, Lj;->e([B)Lk;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v5, v3, Lk;->a:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v3, Lk;->b:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move v3, v0

    :goto_0
    if-ne v3, v1, :cond_1

    iget-object v0, p0, Laou;->B:Landroid/os/Handler;

    const/16 v2, 0x257

    iget-object v3, p0, Laou;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0abc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move v3, v2

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    iput v6, p0, Laou;->o:I

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk;

    iget-object v0, v0, Lk;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    iput-boolean v2, p0, Laou;->m:Z

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk;

    iget-object v0, v0, Lk;->d:Ljava/lang/String;

    iput-object v0, p0, Laou;->r:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk;

    iget-object v0, v0, Lk;->e:Ljava/lang/String;

    iput-object v0, p0, Laou;->s:Ljava/lang/String;

    iget-object v0, p0, Laou;->B:Landroid/os/Handler;

    const/16 v1, 0x195

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk;

    iget-object v0, v0, Lk;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk;

    iget-object v0, v0, Lk;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    :pswitch_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk;

    iget-object v0, v0, Lk;->c:Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0x192

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk;

    iget-object v0, v0, Lk;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto/16 :goto_1

    :pswitch_3
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    const/16 v3, 0x194

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk;

    iget-object v0, v0, Lk;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_4
    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk;

    iget-object v0, v0, Lk;->c:Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Laou;->B:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Laou;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_1

    :cond_6
    iput v6, p0, Laou;->o:I

    goto/16 :goto_1

    :cond_7
    move v3, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Laou;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Laou;->A:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic b(Laou;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Laou;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Laou;Laou$a;)Z
    .locals 1

    invoke-direct {p0, p1}, Laou;->a(Laou$a;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Laou;)Laou$a;
    .locals 1

    iget-object v0, p0, Laou;->t:Laou$a;

    return-object v0
.end method

.method static synthetic c(Laou;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lape;

    invoke-direct {v0, p0, p1}, Lape;-><init>(Laou;Ljava/lang/String;)V

    invoke-virtual {v0}, Lape;->start()V

    return-void
.end method

.method static synthetic d(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Laou;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Laou;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Laou;)V
    .locals 1

    iget-object v0, p0, Laou;->A:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laou;->A:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laou;->A:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Laou;->A:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    return-void
.end method

.method static synthetic f(Laou;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laou;->m:Z

    return v0
.end method

.method static synthetic g(Laou;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laou;->y:Z

    iget-object v0, p0, Laou;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laou;->x:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Laou;->x:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method static synthetic h(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Laou;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laou;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Laou;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Laou;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Laou;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Laou;->z:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic p(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Laou;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Laou;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic r(Laou;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laou;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic t(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic u(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic v(Laou;)V
    .locals 3

    const/4 v1, 0x2

    invoke-virtual {p0}, Laou;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const v2, 0x7f0b0aa7

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    iget-object v0, p0, Laou;->f:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Laou;->a:Lho;

    invoke-virtual {v0}, Lho;->cx()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, ""

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Laou;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne v0, v1, :cond_3

    iget-object v0, p0, Laou;->t:Laou$a;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Laou$a;->a:J

    :cond_0
    :goto_1
    iget-object v0, p0, Laou;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    const-string v0, "\\d*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Laou;->t:Laou$a;

    iput-object v2, v0, Laou$a;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic w(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic x(Laou;)I
    .locals 1

    iget v0, p0, Laou;->o:I

    return v0
.end method

.method static synthetic y(Laou;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laou;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Laou;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laou;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final onBackClick()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laou;->y:Z

    iget-object v0, p0, Laou;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laou;->x:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Laou;->x:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Laou;->A:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laou;->A:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laou;->A:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iput-object v1, p0, Laou;->A:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_1
    invoke-virtual {p0}, Laou;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method public final onCreate()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f080258

    invoke-virtual {p0, v0}, Laou;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Laou;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f080259

    invoke-virtual {p0, v0}, Laou;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Laou;->c:Landroid/widget/EditText;

    const v0, 0x7f08025a

    invoke-virtual {p0, v0}, Laou;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Laou;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f08025b

    invoke-virtual {p0, v0}, Laou;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Laou;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f08025c

    invoke-virtual {p0, v0}, Laou;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Laou;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f080260

    invoke-virtual {p0, v0}, Laou;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Laou;->k:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f08025f

    invoke-virtual {p0, v0}, Laou;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Laou;->j:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const v0, 0x7f08025d

    invoke-virtual {p0, v0}, Laou;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Laou;->g:Landroid/widget/EditText;

    const v0, 0x7f08025e

    invoke-virtual {p0, v0}, Laou;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Laou;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Laou;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_where"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Laou;->w:I

    iget v1, p0, Laou;->w:I

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Laou;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    :cond_0
    const-string v1, "default_content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laou;->u:Ljava/lang/String;

    iget-object v0, p0, Laou;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laou;->c:Landroid/widget/EditText;

    iget-object v1, p0, Laou;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Laou;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Laou;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020356

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Laou;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Laou;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laou;->k:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Laou;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laou;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Laou;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laou;->j:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    iput-boolean v3, p0, Laou;->l:Z

    iput-boolean v3, p0, Laou;->m:Z

    iput-boolean v3, p0, Laou;->y:Z

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Laou;->a:Lho;

    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onHandlerMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0aa4

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
