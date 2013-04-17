.class final Larq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Larn;


# direct methods
.method constructor <init>(Larn;)V
    .locals 0

    iput-object p1, p0, Larq;->a:Larn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Larq;->a:Larn;

    invoke-static {v0}, Larn;->h(Larn;)V

    return-void
.end method
