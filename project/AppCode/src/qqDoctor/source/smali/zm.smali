.class final Lzm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lzl;


# direct methods
.method constructor <init>(Lzl;)V
    .locals 0

    iput-object p1, p0, Lzm;->a:Lzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lzm;->a:Lzl;

    iget-object v0, v0, Lzl;->a:Lzk;

    invoke-virtual {v0}, Lzk;->a()V

    return-void
.end method
