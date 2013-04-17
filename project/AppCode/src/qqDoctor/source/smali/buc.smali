.class final Lbuc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbub;


# direct methods
.method constructor <init>(Lbub;)V
    .locals 0

    iput-object p1, p0, Lbuc;->a:Lbub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbuc;->a:Lbub;

    invoke-virtual {v0}, Lbub;->cancelMissCall()V

    return-void
.end method
