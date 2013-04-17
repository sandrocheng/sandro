.class public final enum Lcom/android/mms/NetworkConnectivityListener$State;
.super Ljava/lang/Enum;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/NetworkConnectivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/NetworkConnectivityListener$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECTED:Lcom/android/mms/NetworkConnectivityListener$State;

.field private static final synthetic ENUM$VALUES:[Lcom/android/mms/NetworkConnectivityListener$State;

.field public static final enum NOT_CONNECTED:Lcom/android/mms/NetworkConnectivityListener$State;

.field public static final enum UNKNOWN:Lcom/android/mms/NetworkConnectivityListener$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/android/mms/NetworkConnectivityListener$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/NetworkConnectivityListener$State;->UNKNOWN:Lcom/android/mms/NetworkConnectivityListener$State;

    .line 109
    new-instance v0, Lcom/android/mms/NetworkConnectivityListener$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    .line 110
    sput-object v0, Lcom/android/mms/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/mms/NetworkConnectivityListener$State;

    .line 111
    new-instance v0, Lcom/android/mms/NetworkConnectivityListener$State;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    .line 120
    sput-object v0, Lcom/android/mms/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/android/mms/NetworkConnectivityListener$State;

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/NetworkConnectivityListener$State;

    sget-object v1, Lcom/android/mms/NetworkConnectivityListener$State;->UNKNOWN:Lcom/android/mms/NetworkConnectivityListener$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/mms/NetworkConnectivityListener$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/android/mms/NetworkConnectivityListener$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/NetworkConnectivityListener$State;->ENUM$VALUES:[Lcom/android/mms/NetworkConnectivityListener$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/NetworkConnectivityListener$State;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/android/mms/NetworkConnectivityListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/NetworkConnectivityListener$State;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/NetworkConnectivityListener$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/android/mms/NetworkConnectivityListener$State;->ENUM$VALUES:[Lcom/android/mms/NetworkConnectivityListener$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/mms/NetworkConnectivityListener$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
