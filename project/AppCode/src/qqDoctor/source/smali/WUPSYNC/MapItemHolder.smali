.class public final LWUPSYNC/MapItemHolder;
.super Ljava/lang/Object;


# instance fields
.field public value:LWUPSYNC/MapItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/MapItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWUPSYNC/MapItemHolder;->value:LWUPSYNC/MapItem;

    return-void
.end method
