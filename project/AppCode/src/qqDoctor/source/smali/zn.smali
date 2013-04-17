.class public final Lzn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lzk;


# direct methods
.method public constructor <init>(Lzk;)V
    .locals 0

    iput-object p1, p0, Lzn;->a:Lzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lzn;->a:Lzk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzk;->a(Z)Lzk$a;

    return-void
.end method
