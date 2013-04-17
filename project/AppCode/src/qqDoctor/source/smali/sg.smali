.class final Lsg;
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

    iput-object p1, p0, Lsg;->d:Lse;

    iput-object p2, p0, Lsg;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lsg;->b:Landroid/os/Messenger;

    iput p4, p0, Lsg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v2, 0x66ec

    invoke-virtual {v0, v2}, Lnd;->a(I)V

    sget-object v0, Llm;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Llm;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lfi;->b()V

    :cond_1
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsg;->d:Lse;

    invoke-static {v0}, Lse;->a(Lse;)Landroid/content/Context;

    invoke-static {}, La;->a()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->t()V

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lsg;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lll;

    invoke-direct {v5}, Lll;-><init>()V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lll;->a(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lll;->b(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lk;->b(Ljava/io/File;)I

    move-result v0

    invoke-virtual {v5, v0}, Lll;->a(I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    move v4, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lll;

    invoke-static {v0}, Lfi;->a(Lll;)Z

    move-result v6

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lll;->c()I

    move-result v4

    iget-object v7, p0, Lsg;->d:Lse;

    invoke-static {v4}, Lse;->a(I)Z

    move-result v4

    :cond_4
    if-eqz v6, :cond_6

    iget-object v6, p0, Lsg;->b:Landroid/os/Messenger;

    if-eqz v6, :cond_7

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    const/4 v7, 0x3

    iput v7, v6, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Lll;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lsg;->d:Lse;

    iget-object v0, p0, Lsg;->b:Landroid/os/Messenger;

    invoke-static {v6, v0}, Lse;->a(Landroid/os/Message;Landroid/os/Messenger;)Z

    move v0, v1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    iget v2, p0, Lsg;->c:I

    if-gt v1, v2, :cond_5

    iget-object v2, p0, Lsg;->b:Landroid/os/Messenger;

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v3, v2, Landroid/os/Message;->what:I

    iput v1, v2, Landroid/os/Message;->arg1:I

    iget v6, p0, Lsg;->c:I

    iput v6, v2, Landroid/os/Message;->arg2:I

    iget-object v6, p0, Lsg;->d:Lse;

    iget-object v6, p0, Lsg;->b:Landroid/os/Messenger;

    invoke-static {v2, v6}, Lse;->a(Landroid/os/Message;Landroid/os/Messenger;)Z

    :cond_5
    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    iget-object v6, p0, Lsg;->b:Landroid/os/Messenger;

    if-eqz v6, :cond_7

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    const/4 v7, 0x2

    iput v7, v6, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Lll;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lsg;->d:Lse;

    iget-object v0, p0, Lsg;->b:Landroid/os/Messenger;

    invoke-static {v6, v0}, Lse;->a(Landroid/os/Message;Landroid/os/Messenger;)Z

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    if-eqz v4, :cond_9

    iget-object v0, p0, Lsg;->d:Lse;

    invoke-static {v0}, Lse;->a(Lse;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfi;->a(Landroid/content/Context;)V

    :cond_9
    invoke-static {}, Lse;->a()V

    iget-object v0, p0, Lsg;->b:Landroid/os/Messenger;

    if-eqz v0, :cond_a

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lsg;->c:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lsg;->d:Lse;

    iget-object v1, p0, Lsg;->b:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lse;->a(Landroid/os/Message;Landroid/os/Messenger;)Z

    :cond_a
    return-void
.end method
