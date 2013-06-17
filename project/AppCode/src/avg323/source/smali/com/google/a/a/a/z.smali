.class Lcom/google/a/a/a/z;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/a/a/a/t;


# direct methods
.method private constructor <init>(Lcom/google/a/a/a/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/z;->a:Lcom/google/a/a/a/t;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/a/a/t;Lcom/google/a/a/a/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/a/a/a/z;-><init>(Lcom/google/a/a/a/t;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/a/a/a/z;->a:Lcom/google/a/a/a/t;

    invoke-static {v0}, Lcom/google/a/a/a/t;->b(Lcom/google/a/a/a/t;)Lcom/google/a/a/a/x;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/x;->a:Lcom/google/a/a/a/x;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/z;->a:Lcom/google/a/a/a/t;

    invoke-static {v0}, Lcom/google/a/a/a/t;->c(Lcom/google/a/a/a/t;)V

    :cond_0
    return-void
.end method
