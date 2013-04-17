.class final Lpu;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lpt$a;

.field private synthetic b:Lpt;


# direct methods
.method constructor <init>(Lpt;Lpt$a;)V
    .locals 0

    iput-object p1, p0, Lpu;->b:Lpt;

    iput-object p2, p0, Lpu;->a:Lpt$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lpu;->b:Lpt;

    iget-object v1, p0, Lpu;->a:Lpt$a;

    invoke-virtual {v0, v1}, Lpt;->b(Lpt$a;)V

    return-void
.end method
