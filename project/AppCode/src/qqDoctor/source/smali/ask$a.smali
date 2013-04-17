.class final Lask$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Llr;

.field b:Z


# direct methods
.method public constructor <init>(Llr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lask$a;->a:Llr;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lask$a;->b:Z

    return-void
.end method
