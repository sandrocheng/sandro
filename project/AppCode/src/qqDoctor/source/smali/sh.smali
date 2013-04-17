.class final Lsh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:Landroid/os/Messenger;

.field private synthetic c:I

.field private synthetic d:Lse;


# direct methods
.method constructor <init>(Lse;Ljava/util/ArrayList;Landroid/os/Messenger;I)V
    .locals 0

    iput-object p1, p0, Lsh;->d:Lse;

    iput-object p2, p0, Lsh;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lsh;->b:Landroid/os/Messenger;

    iput p4, p0, Lsh;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0x66ed

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    sget-object v1, Llm;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Llm;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lfi;->b()V

    :cond_1
    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsh;->d:Lse;

    invoke-static {v1}, Lse;->a(Lse;)Landroid/content/Context;

    invoke-static {}, La;->a()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->t()V

    :cond_2
    const/4 v1, 0x1

    iget-object v2, p0, Lsh;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    move v3, v1

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj;

    invoke-static {v0}, Lfi;->a(Llj;)Z

    move-result v5

    if-nez v1, :cond_3

    invoke-virtual {v0}, Llj;->c()I

    move-result v1

    iget-object v6, p0, Lsh;->d:Lse;

    invoke-static {v1}, Lse;->a(I)Z

    move-result v1

    :cond_3
    if-eqz v5, :cond_5

    iget-object v5, p0, Lsh;->b:Landroid/os/Messenger;

    if-eqz v5, :cond_6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    const/16 v6, 0x8

    iput v6, v5, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Llj;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lsh;->d:Lse;

    iget-object v0, p0, Lsh;->b:Landroid/os/Messenger;

    invoke-static {v5, v0}, Lse;->a(Landroid/os/Message;Landroid/os/Messenger;)Z

    move v0, v2

    :goto_1
    add-int/lit8 v2, v3, 0x1

    iget v3, p0, Lsh;->c:I

    if-gt v2, v3, :cond_4

    iget-object v3, p0, Lsh;->b:Landroid/os/Messenger;

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v5, 0x6

    iput v5, v3, Landroid/os/Message;->what:I

    iput v2, v3, Landroid/os/Message;->arg1:I

    iget v5, p0, Lsh;->c:I

    iput v5, v3, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lsh;->d:Lse;

    iget-object v5, p0, Lsh;->b:Landroid/os/Messenger;

    invoke-static {v3, v5}, Lse;->a(Landroid/os/Message;Landroid/os/Messenger;)Z

    :cond_4
    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Lsh;->b:Landroid/os/Messenger;

    if-eqz v5, :cond_6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    const/4 v6, 0x7

    iput v6, v5, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Llj;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lsh;->d:Lse;

    iget-object v0, p0, Lsh;->b:Landroid/os/Messenger;

    invoke-static {v5, v0}, Lse;->a(Landroid/os/Message;Landroid/os/Messenger;)Z

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    iget-object v0, p0, Lsh;->d:Lse;

    invoke-static {v0}, Lse;->a(Lse;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfi;->a(Landroid/content/Context;)V

    :cond_8
    invoke-static {}, Lse;->a()V

    iget-object v0, p0, Lsh;->b:Landroid/os/Messenger;

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lsh;->c:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lsh;->d:Lse;

    iget-object v1, p0, Lsh;->b:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lse;->a(Landroid/os/Message;Landroid/os/Messenger;)Z

    :cond_9
    return-void
.end method
