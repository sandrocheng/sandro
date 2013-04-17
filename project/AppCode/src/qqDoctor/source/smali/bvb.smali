.class final Lbvb;
.super Lbuh$a;


# instance fields
.field private synthetic g:Lbuo$b;


# direct methods
.method constructor <init>(Lbuo$b;)V
    .locals 0

    iput-object p1, p0, Lbvb;->g:Lbuo$b;

    invoke-direct {p0}, Lbuh$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lbvb;->g:Lbuo$b;

    invoke-static {v0, p0}, Lbuo$b;->a(Lbuo$b;Lbuh$a;)V

    return-void
.end method
