.class public final Lmx$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7db

    iput v0, p0, Lmx$a;->a:I

    iput p1, p0, Lmx$a;->b:I

    iput p2, p0, Lmx$a;->c:I

    iput p3, p0, Lmx$a;->d:I

    return-void
.end method
