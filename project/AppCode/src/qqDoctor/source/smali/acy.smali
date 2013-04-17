.class final Lacy;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lacr;


# direct methods
.method constructor <init>(Lacr;I)V
    .locals 0

    iput-object p1, p0, Lacy;->b:Lacr;

    iput p2, p0, Lacy;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/16 v3, 0x63

    iget v0, p0, Lacy;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lacy;->b:Lacr;

    iget-object v0, p0, Lacy;->b:Lacr;

    invoke-static {v0}, Lacr;->f(Lacr;)I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lacy;->b:Lacr;

    invoke-static {v0}, Lacr;->f(Lacr;)I

    move-result v0

    :goto_1
    invoke-static {v1, v0}, Lacr;->c(Lacr;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^^ mock1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lacy;->b:Lacr;

    invoke-static {v1}, Lacr;->f(Lacr;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lacy;->b:Lacr;

    iget-object v1, p0, Lacy;->b:Lacr;

    invoke-static {v1}, Lacr;->f(Lacr;)I

    move-result v1

    invoke-static {v0, v1}, Lacr;->d(Lacr;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lacy;->b:Lacr;

    invoke-static {v0}, Lacr;->f(Lacr;)I

    move-result v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lacy;->b:Lacr;

    invoke-static {v0}, Lacr;->f(Lacr;)I

    move-result v0

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lacy;->b:Lacr;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lacr;->e(Lacr;I)I

    :cond_1
    iget-object v0, p0, Lacy;->b:Lacr;

    invoke-static {v0}, Lacr;->f(Lacr;)I

    move-result v0

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lacy;->b:Lacr;

    invoke-static {v0, v3}, Lacr;->c(Lacr;I)I

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^^ mock1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lacy;->b:Lacr;

    invoke-static {v1}, Lacr;->f(Lacr;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lacy;->b:Lacr;

    iget-object v1, p0, Lacy;->b:Lacr;

    invoke-static {v1}, Lacr;->f(Lacr;)I

    move-result v1

    invoke-static {v0, v1}, Lacr;->d(Lacr;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
