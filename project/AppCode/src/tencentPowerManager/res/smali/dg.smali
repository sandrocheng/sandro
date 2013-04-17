.class public final Ldg;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldg;->b:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ldg;->b:Z

    iput p1, p0, Ldg;->a:I

    iput-boolean v0, p0, Ldg;->b:Z

    iput-object p3, p0, Ldg;->d:Ljava/lang/String;

    iput-object p2, p0, Ldg;->c:Ljava/lang/String;

    return-void
.end method
