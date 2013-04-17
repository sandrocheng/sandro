.class public final LLBSAPIProtocol/CellHolder;
.super Ljava/lang/Object;


# instance fields
.field public value:LLBSAPIProtocol/Cell;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LLBSAPIProtocol/Cell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLBSAPIProtocol/CellHolder;->value:LLBSAPIProtocol/Cell;

    return-void
.end method
