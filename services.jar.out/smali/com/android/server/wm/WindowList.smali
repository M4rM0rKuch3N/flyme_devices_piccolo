.class Lcom/android/server/wm/WindowList;
.super Ljava/util/ArrayList;
.source "WindowState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowList;)V
    .locals 0
    .param p1, "windowList"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    return-void
.end method