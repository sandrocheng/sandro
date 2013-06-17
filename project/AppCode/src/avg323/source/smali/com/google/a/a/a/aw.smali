.class final Lcom/google/a/a/a/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/a/a/as;


# instance fields
.field private final a:Ljava/text/DecimalFormat;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/a/a/a/aw;->a:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/a/a/a/aw;->a:Ljava/text/DecimalFormat;

    invoke-static {p1}, Lcom/google/a/a/a/bj;->b(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
